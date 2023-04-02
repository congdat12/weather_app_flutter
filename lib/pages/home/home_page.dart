import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/model/listview_home_model.dart';
import 'package:flutter_application_1/pages/home/widget/custom_listview.dart';
import 'package:flutter_application_1/pages/home/widget/custom_today_listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final b = listviewHomeModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff7F4CD2),
              Color(0xff431098),
            ],
          )),
          child: Column(
            children: [
              Container(
                //margin: const EdgeInsets.only(top: 200),
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Group 8.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icons/profile.png'),
                        Image.asset('assets/icons/menu.png')
                      ],
                    ),
                    const SizedBox(height: 109),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Hyderabad',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 28),
                            ),
                            Text(
                              '20 Apr Wed  20°C/29°C',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '24°C',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 36),
                            ),
                            Text(
                              'Clear sky',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 21,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 87),
                    Column(
                      children: [
                        const Text(
                          'Swipe down for details',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        Image.asset(
                          'assets/icons/dropdown.png',
                          width: 10,
                          height: 20,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(
                  width: double.infinity, height: 172, child: CustomListView(),),
                  const SizedBox(height: 27),
              const Align(
                alignment: Alignment.centerLeft,
                    
                    child:  Text('Today', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
                  ),
                  const SizedBox(height: 6),
              const SizedBox(
                width: double.infinity,
                height: 112,
                child:  CustomTodayListview())
            ],
          ),
        ),
      ),
    );
  }
}
