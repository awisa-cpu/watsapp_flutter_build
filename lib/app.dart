import 'package:flutter/material.dart';
import 'package:watsappproject/utils/constants/routes_constants/constants.dart';
import 'package:watsappproject/views/chat/chats_view.dart';
import 'package:watsappproject/views/chat/widgets/single_user_chats_view.dart';
import 'package:watsappproject/views/watsapp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const Watsapp(),
      routes: {
        personalChats: (context) => const SingleUserChatView(),
        watsappChats: (context) => const Watsapp(),
        chats: (context) => const ChatsView(),
      },
    );
  }
}
