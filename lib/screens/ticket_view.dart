import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:jay_app/utlst/Widgets/thick_container.dart';
import 'package:jay_app/utlst/app-layout.dart';
import 'package:jay_app/utlst/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      child: Container(
        width: size.width,
        height: 200,
        margin: const EdgeInsets.only(left: 5),
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0XFF526799),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NYC',
                          style: Styles.headLineStyle4
                              .copyWith(color: Styles.bgColor)),
                      const Expanded(child: SizedBox()),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder:
                                  (BuildContext, BoxConstraints constraints) {
                                print(
                                    'The width is ${constraints.constrainWidth()}');
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white)),
                                            )));
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const ThickContainer(),
                      Expanded(child: SizedBox()),
                      Text('LDN',
                          style: Styles.headLineStyle4
                              .copyWith(color: Styles.bgColor)),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('New-York',
                            style: Styles.textStyle
                                .copyWith(color: Styles.bgColor)),
                      ),
                      Text('8H-30M',
                          style:
                              Styles.textStyle.copyWith(color: Styles.bgColor)),
                      SizedBox(
                        width: 100,
                        child: Text('London',
                            textAlign: TextAlign.end,
                            style: Styles.textStyle
                                .copyWith(color: Styles.bgColor)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (BuildContext, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                    height: 1,
                                    width: 10,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(10)))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
