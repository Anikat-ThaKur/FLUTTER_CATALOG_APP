import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/routes.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      //scroller
      child: SingleChildScrollView(
      child: Column(
        //creating a list 
        children: [
          Image.asset("assets/Images/login.png",
          fit: BoxFit.cover,
          height: 400,
          ),
          //a sized box to give space between the image and text
         const SizedBox( height: 20.0,),
          const Text("Welcome",
          style:TextStyle(
            fontSize: 28,
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
            height: 40.0,
            ),
            ElevatedButton(
             child: Text("Login"),
             style: TextButton.styleFrom(minimumSize: Size(120,40)),
            onPressed: () {
              //for navigation
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
            },)

            
            ],
           ),
            )
        ],
        )
      )
    );
  }
}