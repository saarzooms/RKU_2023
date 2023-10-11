import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    print('chat page');
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => ListTile(
                title: Padding(
                  padding: index % 2 == 0
                      ? const EdgeInsets.only(left: 8.0)
                      : const EdgeInsets.only(right: 8.0),
                  child: Text('Message'),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child:
                    TextField(decoration: InputDecoration(hintText: 'Message')),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
              ),
            ],
          )
        ],
      ),
    );
  }
}
