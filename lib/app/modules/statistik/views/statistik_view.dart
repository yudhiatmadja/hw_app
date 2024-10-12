import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwapp/app/modules/statistik/controllers/statistik_controller.dart';

class StatistikView extends GetView<StatistikController> {
  const StatistikView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(221, 165, 35, 0.4),
        title: const Text('Dashboard'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 375,
              height: 157,
              padding: const EdgeInsets.all(20),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFFF3FFF9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          padding: const EdgeInsets.all(6),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 1.50),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Users',
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '35k',
                    style: TextStyle(
                      color: Color(0xFF292929),
                      fontSize: 64,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 375,
              height: 400,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFFF3FFF9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 26,
                    child: Text(
                      'Statistic Event',
                      style: TextStyle(
                        color: Color(0xFF292929),
                        fontSize: 32,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 49,
                    top: 335,
                    child: Container(
                      width: 280,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFF1F1F1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64,
                    top: 120,
                    child: Container(
                      width: 265,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.09,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFF4F5F9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64,
                    top: 195,
                    child: Container(
                      width: 265,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.09,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFF4F5F9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64,
                    top: 274,
                    child: Container(
                      width: 265,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.09,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFF4F5F9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 152,
                    child: Container(
                      width: 19,
                      height: 98,
                      child: Stack(
                        children: [
                          Positioned(
                            left: -10,
                            top: -59,
                            child: SizedBox(
                              width: 28,
                              height: 38,
                              child: Text(
                                '40',
                                style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -10,
                            top: 16,
                            child: SizedBox(
                              width: 28,
                              height: 38,
                              child: Text(
                                '20',
                                style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -10,
                            top: 95,
                            child: SizedBox(
                              width: 15,
                              height: 38,
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64,
                    top: 274,
                    child: Container(
                      width: 38,
                      height: 61,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA8A8A8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            topRight: Radius.circular(7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 151,
                    top: 274,
                    child: Container(
                      width: 38,
                      height: 61,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA8A8A8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            topRight: Radius.circular(7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 309,
                    top: 119,
                    child: Container(
                      width: 38,
                      height: 216,
                      decoration: ShapeDecoration(
                        color: Color(0xFF292929),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            topRight: Radius.circular(7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 233,
                    top: 86,
                    child: Container(
                      width: 38,
                      height: 249,
                      decoration: ShapeDecoration(
                        color: Color(0xFF292929),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            topRight: Radius.circular(7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 69,
                    top: 280,
                    child: Container(
                      width: 198.50,
                      height: 19.25,
                      child: Stack(
                        children: [
                          Positioned(
                            left: -3,
                            top: 63,
                            child: SizedBox(
                              width: 33,
                              height: 38,
                              child: Text(
                                'Mon',
                                style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 88,
                            top: 63,
                            child: SizedBox(
                              width: 39,
                              height: 38,
                              child: Text(
                                'Tue',
                                style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 164,
                            top: 63,
                            child: SizedBox(
                              width: 52,
                              height: 38,
                              child: Text(
                                'Wed',
                                style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 251,
                            top: 63,
                            child: SizedBox(
                              width: 42,
                              height: 38,
                              child: Text(
                                'Thu',
                                style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 375,
              height: 157,
              padding: const EdgeInsets.all(20),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFFF3FFF9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          padding: const EdgeInsets.all(6),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 1.50),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Leaderboard',
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '35k',
                    style: TextStyle(
                      color: Color(0xFF292929),
                      fontSize: 64,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            )
          ],
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
