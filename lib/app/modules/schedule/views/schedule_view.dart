import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwapp/app/modules/calender/controllers/calender_controller.dart';
import 'package:hwapp/app/modules/detail_kegiatan/views/detail_view.dart';

class ScheduleView extends GetView<CalenderController> {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: const Text(
            'Schedule',
            style: TextStyle(color: Colors.white),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 428.15,
                height: 118.81,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 428.15,
                        height: 118.81,
                        decoration: BoxDecoration(color: Color(0xFFF3FFF9)),
                      ),
                    ),
                    Positioned(
                      left: 7,
                      top: 12,
                      child: Container(
                        width: 76.21,
                        height: 94.15,
                        decoration: ShapeDecoration(
                          color: Color(0xFF232323),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.21),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 112,
                      top: 12,
                      child: Container(
                        width: 76.21,
                        height: 94.15,
                        decoration: ShapeDecoration(
                          color: Color(0xFF232323),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.21),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 26,
                      top: 72,
                      child: Container(
                        width: 348,
                        height: 22,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Wed',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.93,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.27,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 107,
                              top: 0,
                              child: Text(
                                'Thu',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.93,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.27,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 218,
                              top: 0,
                              child: Text(
                                'Fri',
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 17.93,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.27,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 320,
                              top: 0,
                              child: Text(
                                'Sat',
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 17.93,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: -0.27,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 26,
                      child: Container(
                        width: 333.27,
                        height: 33,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.90,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.40,
                              ),
                            ),
                            const SizedBox(width: 87.42),
                            Text(
                              '4',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.90,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.40,
                              ),
                            ),
                            const SizedBox(width: 87.42),
                            Text(
                              '5',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26.90,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.40,
                              ),
                            ),
                            const SizedBox(width: 87.42),
                            Text(
                              '6',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26.90,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 185,
                height: 31,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 74,
                        height: 31,
                        decoration: BoxDecoration(color: Color(0xFF232323)),
                      ),
                    ),
                    Positioned(
                      left: 111,
                      top: 0,
                      child: Container(
                        width: 74,
                        height: 31,
                        decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                    Positioned(
                      left: 23,
                      top: 8,
                      child: Text(
                        'Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 118,
                      top: 9,
                      child: Text(
                        'Comingsoon',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 380,
                height: 436,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        '09.00 AM',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.93,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.27,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 238,
                      child: Text(
                        '12.00 AM',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.93,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.27,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 40,
                      child: Container(
                        width: 380,
                        height: 158,
                        decoration: BoxDecoration(color: Color(0xFFF3FFF9)),
                      ),
                    ),
                    Positioned(
                      left: 122.96,
                      top: 78.05,
                      child: Text(
                        'Kegiatan 1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.93,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.27,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 122.96,
                      top: 99.35,
                      child: Text(
                        'Date',
                        style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontSize: 15.69,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 122.96,
                      top: 132.97,
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the desired page when tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    KegiatanPage()), // Replace with your first target page
                          );
                        },
                        child: Container(
                          width: 87.42,
                          height: 33.62,
                          decoration: ShapeDecoration(
                            color: Color(0xFF232323),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.60),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'View',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.69,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 246.25,
                      top: 139.70,
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Color(0xFF232323),
                          fontSize: 15.69,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 228.32,
                      top: 132.97,
                      child: Container(
                        width: 87.42,
                        height: 33.62,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.12, color: Color(0xFF232323)),
                            borderRadius: BorderRadius.circular(4.48),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 278,
                      child: Container(
                        width: 380,
                        height: 158,
                        decoration: BoxDecoration(color: Color(0xFFF3FFF9)),
                      ),
                    ),
                    Positioned(
                      left: 122.96,
                      top: 316.05,
                      child: Text(
                        'Kegiatan 2',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.93,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.27,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 122.96,
                      top: 337.35,
                      child: Text(
                        'Date',
                        style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontSize: 15.69,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 122.96,
                      top: 370.97,
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the desired page when tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    KegiatanPage()), // Replace with your second target page
                          );
                        },
                        child: Container(
                          width: 87.42,
                          height: 33.62,
                          decoration: ShapeDecoration(
                            color: Color(0xFF232323),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.60),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'View',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.69,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 246.25,
                      top: 377.70,
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Color(0xFF232323),
                          fontSize: 15.69,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 228.32,
                      top: 370.97,
                      child: Container(
                        width: 87.42,
                        height: 33.62,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.12, color: Color(0xFF232323)),
                            borderRadius: BorderRadius.circular(4.48),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
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
      ),
    );
  }
}
