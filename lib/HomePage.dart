import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imagelist = [
    'iamges/udemy.png',
    'iamges/stackover.png',
    'iamges/coursa.png',
    'iamges/Youtube.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple[700],
            title: Center(
              child: Text(
                'Dalilak',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          body: ListView(
            children: [
              CarouselSlider(
                items: imagelist.map((iamgeUri) {
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    width: double.infinity,
                    child: Image.asset(
                      iamgeUri,
                      fit: BoxFit.fill,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 250,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    'Welcome in Dalilak',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(
                    height: 10,
                    color: Colors.purple[700],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Dalilak It is an application that makes it easy for you to search for courses or educational courses on all platforms.',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.w300,
                            color: Colors.black87),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 65,
                        child: Material(
                          elevation: 5,
                          color: Colors.purple[700],
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: 250,
                            height: 42,
                            child: Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 26),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
