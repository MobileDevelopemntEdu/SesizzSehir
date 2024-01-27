import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              const Text(
                'RJKRL',

                style: TextStyle(fontSize: 24.5),

              ),
              SizedBox(
                height: 30.0,
              ),
              ClipOval(
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  child: Icon(Icons.account_circle_outlined,size: 110,),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              const Text(
                'login',
                style: TextStyle(fontSize: 24.5),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: const InputDecoration(hintText: "Email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: const InputDecoration(hintText: "Password"),
                ),
              ),
              TextButton(
                  onPressed: () {
                  //  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => RegisterView()));
                  },
                  child: const Text("Register Here"))
            ],
          ),
        ),
      ),
    );




  }
}
