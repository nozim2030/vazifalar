import 'package:burger_ui/utils/colors.dart';
import 'package:burger_ui/widgets/comment.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBacgColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBacgColor,
        centerTitle: false,
        title: const Text("Review"),
        leading: Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.containerBackgrColor),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Comment(
                title: 'Great Food and Service',
                comment:
                    "This Food so tasty & delicious. Breakfast so fast Delivered in my place. Chef is very friendly. I’m really like chef for Home Food Order. Thanks. ",
                imagePath: 'assets/images/avatar.jpg',
              ),
              SizedBox(height: 20),
              Comment(
                title: 'Aveasome and Nice',
                imagePath: "assets/images/avatar.jpg",
                comment: """This Food so tasty & delicious. Breakfast 
so fast Delivered in my place. """,
              ),
              SizedBox(height: 20),
              Comment(
                title: "Aveasome and Nice",
                imagePath: "assets/images/avatar.jpg",
                comment: """This Food so tasty & delicious. """,
              ),
              SizedBox(height: 20),
              Comment(
                title: "Aveasome and Nice",
                imagePath: "assets/images/avatar.jpg",
                comment: """This Food so tasty & delicious. Breakfast 
so fast Delivered in my place. """,
              ),
              SizedBox(height: 20),
              Comment(
                  title: "Aveasome and Nice",
                  comment: "This Food very delicions",
                  imagePath: "assets/images/avatar.jpg"),
              SizedBox(height: 20),
              Comment(
                title: 'Aveasome and Nice',
                imagePath: "assets/images/avatar.jpg",
                comment: """This Food so tasty & delicious. Breakfast 
so fast Delivered in my place. """,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
