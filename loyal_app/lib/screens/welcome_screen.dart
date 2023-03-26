// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loyal_app/colors.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Material(
      child: Container(
        width: ekranGenisligi,
        height: ekranYuksekligi,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              cColor.withOpacity(1),
              cColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26.83, top: 40),
                  child: Row(
                    children: [
                      Image.asset("images/Vector.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.83),
                        child: Text(
                          "Loyal",
                          style: GoogleFonts.philosopher(
                            textStyle: const TextStyle(
                              fontSize: 28,
                              color: Color(0xFFFFFFFF),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 157,
                  height: 147,
                  child: Image.asset(
                    "images/hearts.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Choose Dress",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 41,
                          color: aColor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w800,
                          shadows: [
                            Shadow(
                              offset: Offset(
                                0.0,
                                6.0,
                              ),
                              color: Color.fromRGBO(188, 255, 94, 0.2),
                            ),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                        "Check our latest fashion collection For \nYour Most Loyal Friend",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            height: 1.5,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 10),
                    child: SizedBox(
                      width: 160,
                      height: 51,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Let’s Explore",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                height: 1.5,
                                fontSize: 16,
                                color: Color(0xFF110A07),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: bColor,
                          shadowColor: bColor,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            "images/dog.png",
                            height: ekranYuksekligi * 0.5,
                            width: ekranYuksekligi * 0.40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
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
