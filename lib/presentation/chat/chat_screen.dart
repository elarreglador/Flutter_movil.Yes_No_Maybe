import "package:flutter/material.dart";

class ChatScreen extends StatelessWidget {

  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(7.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://cdn.20m.es/img2/recortes/2017/03/14/439263-157-118.jpg'),
          ),
        ),
        title: const Text("Antonio"),
      ),
    );
  }
}