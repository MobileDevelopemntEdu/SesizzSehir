import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
              children : [
                Icon(Icons.notifications_none_outlined,size: 33,),
              ],
          ),
      
        ),
      ),
    );

  }
}
