import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/routes.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changedButton=false;
  //key for form with state global
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()) {
       setState(() { 
                      changedButton=true;
              
                    });
                    await Future.delayed(Duration(seconds:1));
                    await Navigator.pushNamed(context, MyRoutes.homeRoute);
                    setState(() {
                      changedButton = false;
                      
                    });
    
    }
   

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      //scroller
      child: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          //creating a list 
          children: [
            Image.asset("assets/Images/login.png",
            fit: BoxFit.cover,
            height: 400,
            ),
            //a sized box to give space between the image and text
           const SizedBox( height: 20.0,),
             Text("Welcome $name",
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
                validator: (value){
                  if(value!.isEmpty)
                  {
                    return "Username cannot be null";

                  }
                  return null;
                  
                },
                onChanged: (value) {
                  //the value written on username will be passed on to name
                  name = value;
                  //for change in state
                  setState(() {
                    
                  });
                }
              ),
               TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  
                  labelText: "Password",
                  //after clicking the labeltext hinttext will appear
                  hintText: "Enter Password",
        
                  
                ),
                  validator: (value){
                  if(value!.isEmpty)
                  {
                    return "Password cannot be null";

                  }
                  else if(value.length<6)
                  {
                    return "Password length cannot be less than 6 characters";
                  }
                  return null;
                  
                },
              ),
                const SizedBox( 
              height: 40.0,
              ),
      
              Material(
                color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changedButton ? 50: 8),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changedButton?50:150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changedButton
                    ? Icon(
                      Icons.done,
                      color:Colors.white,
                    )
                   : Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                   
                    
                    ),
                  ),
               ),
              
              
      
              
              ],
             ),
              )
          ],
          ),
      )
      )
    );
  }
}