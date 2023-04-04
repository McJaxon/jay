import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:jay_app/screens/ticket_view.dart';
import 'package:jay_app/screens/welcome_screen.dart';
import 'package:jay_app/utlst/app_styles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle4,
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200)),
                        child: Image.asset('assets/images/Avatar.jpg'))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF4F6FD)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 15),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Color(0xFFBFC205),
                          ),
                          Text(
                            'search',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      )),
                ),
                SizedBox(height: 10),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Upcoming Flights', style: Styles.headLineStyle3),
                      InkWell(
                        onTap: () {
                          print('You are tapped');
                        },
                        child: Text(
                          'view all',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Gap(10),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              TicketView(),
              TicketView(),
            ]),
          ),
        ],
      ),
    );
  }
}
