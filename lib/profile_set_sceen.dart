import 'package:burger_ui/utils/colors.dart';
import 'package:burger_ui/utils/widgeds.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBacgColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBacgColor,
        leading: Container(
          margin: EdgeInsets.only(
            left: 10,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.iconBacgrounColor),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        title: Text("Profile"),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.iconBacgrounColor),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz_rounded),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                    radius: 45,
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vishal Khadok",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "I love fast food",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.containerBackgrColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    customRow(
                        icon: Icons.person_outline,
                        iconColor: Colors.orange,
                        text: "Personal Info"),
                    customRow(
                      icon: Icons.map_outlined,
                      text: "Adresses",
                      iconColor: Colors.deepPurple,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.containerBackgrColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    customRow(
                        icon: Icons.card_travel_rounded,
                        iconColor: Colors.blue[400],
                        text: "Cart"),
                    customRow(
                      icon: Icons.favorite_border,
                      text: "Favourite",
                      iconColor: Colors.purple,
                    ),
                    customRow(
                        icon: Icons.notifications_none,
                        iconColor: Colors.orange,
                        text: "Notifications"),
                    customRow(
                      icon: Icons.payment,
                      text: "Paynent Method",
                      iconColor: Colors.blue[400],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.containerBackgrColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    customRow(
                        icon: Icons.question_mark_sharp,
                        iconColor: Colors.orange,
                        text: "FAQs"),
                    customRow(
                      icon: Icons.map_outlined,
                      text: "User Reviews",
                      iconColor: Colors.green,
                    ),
                    customRow(
                        icon: Icons.settings,
                        iconColor: Colors.deepPurple,
                        text: "Setting"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.containerBackgrColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    customRow(
                        icon: Icons.logout_outlined,
                        iconColor: Colors.red[300],
                        text: "Log Out"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
