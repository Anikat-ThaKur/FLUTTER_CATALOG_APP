import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        //creating a list 
        children: [
          Image.asset("assets/Images/login.png",
          fit: BoxFit.cover,
          ),
          //a sized box to give space between the image and text
         const SizedBox( height: 20.0,),
          const Text("Welcome",
          style:TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          ),
           const SizedBox( 
            height: 20.0,
            ),
            Padding(
              padding: 
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              
           child: Column(
            children: [
                  TextFormField(
              decoration: const InputDecoration(
                labelText: "Username",
                //after clicking the labeltext hinttext will appear
                hintText: "Enter Username",
                
              ),
            ),
             TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                
                labelText: "Password",
                //after clicking the labeltext hinttext will appear
                hintText: "Enter Password",
  
                
              ),
            ),
              const SizedBox( 
            height: 20.0,
            ),
            ElevatedButton(
             child: Text("Login"),
             style: TextButton.styleFrom(),
            onPressed: () {
              print("HII NEW MEMBER");
            },)
          

            ],
           ),
            )
        ],)
    );
  }
}