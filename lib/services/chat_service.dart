import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login/services/message.dart';

class ChatService extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> sendMessage(String recieverId, String message) async {
    // get user info
    final String currentUserId = _firebaseAuth.currentUser!.uid;
    final String currentUserEmail = _firebaseAuth.currentUser!.email.toString();
    final Timestamp timestamp = Timestamp.now();

    //create a message
    Message newMessage = Message(
        senderId: currentUserId,
        senderEmail: currentUserEmail,
        recieverId: recieverId,
        message: message,
        timestamp: timestamp);

    List<String> ids = [currentUserId, recieverId];
    ids.sort();

    //create a chat room

    String chatRoomId = ids.join("_");

    //add a message
    await _firestore
        .collection('chat_rooms')
        .doc(chatRoomId)
        .collection('messages')
        .add(newMessage.toMap());
    }

//get message
    Stream<QuerySnapshot> getMessages(String userId, String otherUserId) {
      List<String> ids = [userId, otherUserId];
      ids.sort();

      String chatRoomId = ids.join("_");
      return _firestore
          .collection('chat_rooms')
          .doc(chatRoomId)
          .collection('messages').orderBy('timestamp',descending: false).snapshots();
  }
}
