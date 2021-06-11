import 'package:flutter/material.dart';

class VerticalTabBar extends StatefulWidget {
  VerticalTabBar({Key? key}) : super(key: key);

  @override
  _VerticalTabBarState createState() => _VerticalTabBarState();
}

class _VerticalTabBarState extends State<VerticalTabBar> {
  int selectedIndex = 0;
  PageController _pageController = PageController();

  int pagesCount = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: ListView.separated(
                itemCount: pagesCount,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 5);
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        _pageController.jumpToPage(index);
                      });
                    },
                    child: Container(
                      child: Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: (selectedIndex == index) ? 50 : 0,
                            width: 5,
                            color: Colors.blue,
                          ),
                          Expanded(
                              child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 500),
                            height: 50,
                            color: (selectedIndex == index)
                                ? Colors.blueGrey.withOpacity(0.2)
                                : Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 5),
                              child: Text('Tab title $index'),
                            ),
                          ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
                child: Container(
              child: PageView(
                controller: _pageController,
                children: [
                  for (var i = 0; i < pagesCount; i++)
                    Container(
                      color: Colors.blueGrey,
                      child: Center(child: Text("page $i")),
                    ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
