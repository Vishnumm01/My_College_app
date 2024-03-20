// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, unused_import, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_college_app/signup.dart';
import 'menu.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _obscureText = true;

  //TextEditingController _emailController = TextEditingController();
  //TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 230, 193),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'GPTC CHELAKKARA',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.9,
              ),
              items: [
                'assets/COLLEGE.jpg',
                'assets/GPTC MM.png',
                'assets/COLLEGE2.png',
                'assets/COLLEGE3.png',
                // Add more image paths as needed
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: 800,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset(
                        item.toString(),
                        fit: BoxFit.fitWidth,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  prefixIcon: Icon(Icons.email),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,
                    color: _obscureText ? Colors.grey : Color.fromARGB(255, 152, 151, 151),),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100.0,
              height: 50.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) => StadiumBorder()),
                ),
                onPressed: () {
                  //loginActivity(_emailController.text, _passwordController.text, context, menuscreen());
                  Navigator.push(context, MaterialPageRoute(builder: (context) => menuscreen()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
             },
             
              child: RichText(
                text: TextSpan(
                  text: 'Signup',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 17, 51, 165),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}