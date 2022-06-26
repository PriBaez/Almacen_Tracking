import 'dart:html';

import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget{
  const RegistrationScreen ({ Key? key }) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  //Form key
  final _formkey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController firstNameEditingController = new TextEditingController();
  final TextEditingController lastNameEditingController = new TextEditingController();
  final TextEditingController emailEditingController = new TextEditingController();
  final TextEditingController passwordEditingController = new TextEditingController();
  final TextEditingController confirmPasswordEditingController = new TextEditingController();

  @override 
  Widget build(BuildContext context){

       // firstName Field   
    final firstnameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,

      //validator: () {},
      onSaved: (value)
      {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Nombre",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          ),
      ));
    
   
       // Lastname Field
    final LastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,

      //validator: () {},
      onSaved: (value)
      {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Apellido",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          ),
      ));


       // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,

      //validator: () {},
      onSaved: (value)
      {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Correo electronico",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          ),
      ));


      // password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,

      //validator: () {},
      onSaved: (value)
      {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Contraseña",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          ),
      ));

     // confirm password field
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,

      //validator: () {},
      onSaved: (value)
      {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirmar contraseña",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          ),
      ));


    // Sign Up button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.purpleAccent,
      child: MaterialButton(      
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
                  
          onPressed: () {},
          child: Text(
            "Registrarse",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
        )
    );

  return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.purple),
        onPressed: () {
          //se lo pasamos a nuestra ruta.
          Navigator.of(context).pop();
        },
        
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 180,
                      child: Image.asset("assets/trailer-truck.png",
                      fit: BoxFit.contain,
                      )),
                      SizedBox(height: 45),

                    firstnameField,
                    SizedBox(height: 20),
                    
                    LastNameField,
                    SizedBox(height: 20),

                    emailField,
                    SizedBox(height: 20),

                    passwordField,
                    SizedBox(height: 20),

                    confirmPasswordField,
                    SizedBox(height: 20),

                    signUpButton,
                    SizedBox(height: 15),
               
                  ],
                  )
                  ),
            ),
        
        ),
        
        
        ),
        
        ),
    
    
    
    
    );
  }
}

