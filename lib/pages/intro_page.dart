// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Image.asset(
                  "assets/images/nike.png",
                  color: Colors.grey[900],
                ),
              ),
              SizedBox(height: 48),
              Text("Just Do it",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[900]
                  )),
              SizedBox(height: 24),
              Text(
                "Brand new sneakers and custom kicks  made with premium quality",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 48),

              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                      child: Text("Shop Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
