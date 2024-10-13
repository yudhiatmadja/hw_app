import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwapp/app/modules/Scoreboard/views/scoreboard_view.dart';
import 'package:hwapp/app/modules/UserDashboard/views/webview_user.dart';
import 'package:hwapp/app/modules/absen/views/absen_view.dart';
import 'package:hwapp/app/modules/calender/views/calender_view.dart';
import 'package:hwapp/app/modules/profile/views/profile_view.dart';
import 'package:hwapp/app/modules/schedule/views/schedule_view.dart';
import 'package:hwapp/app/modules/user_modul/views/modul_view.dart';

import '../controllers/user_controller.dart';

class HomepageUView extends GetView<HomepageUController> {
  const HomepageUView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(221, 165, 35, 0.4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User Profile Section
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ProfileView()); // Navigate to ProfileView
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage(
                                'assets/bg.png'), // Update to your asset image
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Abraham', // Replace with dynamic username if needed
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),

                // Search Bar
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.black54),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.mic, color: Colors.black54),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),

                // Background Image Container
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/bg.png'), // Update to your asset image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),

                // Section Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Looking For",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),

                // Menu Items Grid
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    buildMenuItem(
                      context,
                      'Modul',
                      Icons.book,
                      () => Get.to(() => ModulScreen()),
                    ),
                    buildMenuItem(
                      context,
                      'Absen',
                      Icons.checklist,
                      () => Get.to(() => AbsensiPage()),
                    ),
                    buildMenuItem(
                      context,
                      'Schedule',
                      Icons.schedule,
                      () => Get.to(() => ScheduleView()),
                    ),
                    buildMenuItem(
                      context,
                      'Scoreboard',
                      Icons.leaderboard,
                      () => Get.to(() => ScoreboardPage()),
                    ),
                    // New Sejarah Menu Item
                    buildMenuItem(
                      context,
                      'About HW',
                      Icons.info,
                      () => Get.to(() => SejarahView()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Get.to(() => HomepageUView());
              break;
            case 1:
              break;
            case 2:
              Get.to(() => CalenderView());
              break;
            case 3:
              break;
          }
        },
      ),
    );
  }

  Widget buildMenuItem(
      BuildContext context, String title, IconData icon, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF009D44),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 40.0),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    home: HomepageUView(),
  ));
}
