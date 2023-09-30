import 'package:flutter/material.dart';
import 'package:shop_application/buildColumnAtTop.dart';
import 'package:shop_application/homePage/flatButton.dart';
import 'package:shop_application/homePage/myCandleList.dart';

import 'buildContainerBottomNAv.dart';
import 'homePage/buildBottomContainer.dart';
import 'lineBar.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, color: Colors.grey, spreadRadius: 1)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildContainerBottomNav(icon: Icons.person),
                BuildContainerBottomNav(icon: Icons.shopping_bag),
                BuildContainerBottomNav(icon: Icons.home, isSelect: true),
                BuildContainerBottomNav(icon: Icons.favorite),
                BuildContainerBottomNav(icon: Icons.settings),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Image.asset("assets/images/hamburger.png"),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.all(10),
              child: Image.asset("assets/images/SEARCH.png"),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Shop ",
                  style: TextStyle(fontSize: 32, letterSpacing: 1),
                ),
                Text(
                  "Anthropologie",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(text: "home Decore", isSelected: true),
                FlatButton(text: "Bath & Body"),
                FlatButton(text: "Beauty"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 20,
                      ),
                    ]),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BuildColumnAtTop(text: "Candels", isSelected: true),
                          BuildColumnAtTop(text: "vases"),
                          BuildColumnAtTop(text: "bins"),
                          BuildColumnAtTop(text: "Floral"),
                          BuildColumnAtTop(text: "Decor"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyCandleList(),
                      SizedBox(
                        height: 20,
                      ),
                      LineBar(),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            Text(
                              "Holiday Special",
                              style: TextStyle(fontSize: 24),
                            ),
                            Spacer(),
                            Text(
                              "View All",
                              style:
                              TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            BuildBottomContainer(),
                            BuildBottomContainer(),
                            BuildBottomContainer(),
                            BuildBottomContainer(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  }