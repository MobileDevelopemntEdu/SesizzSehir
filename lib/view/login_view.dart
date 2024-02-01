import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterView.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'ANIMALS',

                  style: TextStyle(fontSize: 30.5,color: Colors.red),
                ),
                SizedBox(
                  height: 60.0,
                ),
                ClipOval(
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    child: Icon(Icons.account_circle_outlined,size: 110,),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                const Text(
                  'login',
                  style: TextStyle(fontSize: 24.5),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: const InputDecoration(hintText: "Name&surName"),
                  ),
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
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        //  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => RegisterView()));
                      },
                      child: const Text("Login ın"),
                  ),
                ),
            
                SizedBox(
                  height:20,
                  
                ),
            
                TextButton(
                    onPressed: () {
            
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const RegisterView()));
                    },
                    child: const Text("Register Here",style: TextStyle(color: Colors.black,fontSize: 14.5),)),
            
            
              ],
            ),
          ),
        ),
      ),
    );




  }
}
