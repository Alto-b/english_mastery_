import 'package:flutter/material.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat assist")),
      body: Column(
        children: [
          Text("Chat assist"),
        ],
      ),
    );
  }
}
