import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/tesla_app/configs/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                type: MaterialType
                    .transparency, // to visible splash / ripple effect. the parent's decoration color is covering ripple effect
                child: Row(
                  children: [
                    IconButton(
                        iconSize: 50,
                        splashRadius: 25,
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_rounded,
                          color: kPrimaryColor,
                        )),
                    Spacer(),
                    Stack(
                      children: [
                        IconButton(
                            iconSize: 50,
                            splashRadius: 25,
                            onPressed: () {},
                            icon: FittedBox(
                                child: Icon(Icons.account_circle_rounded))),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                color: kPrimaryColor, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Text(
                'Your Tesla',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 35),
                child: Text(
                  'MODEL X',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200),
                ),
              ),
              Image.asset('lib/tesla_app/images/homepage_tesla.png'),
              new CircularPercentIndicator(
                radius: 200.0,
                lineWidth: 25.0,
                animation: true,
                percent: 0.8,
                center: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '80%',
                        style:
                            TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Charged',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: kPrimaryColor,
                backgroundColor: kProgressBackGroundColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('lib/tesla_app/images/lighting.svg'),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text('Charging.. 14 mins remaining'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: kCardColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Temparature',
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('Cabin'),
                              SizedBox(height: 10),
                              Center(
                                child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: '21',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold,
                                            color: kPrimaryColor)),
                                    WidgetSpan(
                                      child: Transform.translate(
                                        offset: Offset(0, -12),
                                        child: Text('C',
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: kPrimaryColor)),
                                      ),
                                    )
                                  ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Card(
                      color: kCardColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Consumption',
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('Today'),
                              SizedBox(height: 10),
                              Center(
                                child: Text('4.3',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: kPrimaryColor)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
