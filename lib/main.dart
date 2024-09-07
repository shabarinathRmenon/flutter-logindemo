import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart'; // For blur effect

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            return Center(
              child: Container(
                width:
                    screenWidth * 0.9, // Main container width (90% of screen)
                height: screenHeight *
                    0.95, // Main container height (95% of screen)
                child: Stack(
                  children: [
                    // Left Container (Image with Text)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: screenWidth *
                            0.5, // Responsive left container width
                        height: screenHeight *
                            0.9, // Left container height (90% of screen height)
                        decoration: BoxDecoration(
                          color: Colors.blue, // Placeholder color (use image)
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/ship2.png'), // Replace with your image URL
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Explore Demo Limited's Premier Logistics and Freight Services",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth *
                                      0.016, // Responsive font size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Right Container (Login Form)
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: screenWidth * 0.35, // Right container width
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          // This ensures that if content is too large, it's scrollable but avoids an overflow error
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Icon at the top
                              Container(
                                width: 96,
                                height: 96,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                child: Icon(Icons.person,
                                    size: 48, color: Colors.white),
                              ),
                              SizedBox(height: 24),

                              // Welcome Back Text
                              Text(
                                'Welcome Back',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'We are glad to see you',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 32),

                              // Text Fields for Email and Password
                              Container(
                                width: double.infinity, // Fill container width
                                child: Column(
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 32),

                              // Login Button and Forgot Password
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Login'),
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              TextButton(
                                onPressed: () {},
                                child: Text('Forgot Password?'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Bottom Copyright Text
                    Positioned(
                      bottom: 16,
                      right: screenWidth * 0.05,
                      child: Text(
                        '2024 DEMO GROUP. All Rights Reserved',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
