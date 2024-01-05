import 'package:chat_1/provider/chat_provider.dart';
import 'package:chat_1/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/theme.dart';

void main() => runApp(Chat());

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ChatProvider())
      ],
      child: MaterialApp(
        theme: AppTheme(selectedColor: 2).theme(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ChatScreen(),
      ),
    );
  }
}

