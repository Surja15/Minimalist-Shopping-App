import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/pokemon-gym-logo.png',
                height:240,
                ),
              ),
              const  SizedBox(height:48),
          
          
              //title
              const Text('eShop-Dex', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:20,
              ),
              ),
              const  SizedBox(height:18),
          
              //sub title
              const Text('Brand new sneakers and custom running shoes made with premium quality', style: TextStyle(
              
              fontSize:15,
              color:Colors.grey,
              ),
              textAlign: TextAlign.center,
              ),
              const  SizedBox(height:38), //my class 10 roll number 
          
          
              //shop now button
              GestureDetector(
                onTap:() => Navigator.push(context, 
                MaterialPageRoute(builder:(context) => HomePage(),
                ),
                ),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(25),
                  child:const Center(
                  child: const Text(
                    'Shop Now', 
                    style: TextStyle(color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 15,
                    
                    )
                  ),
                  ),
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}