import 'package:flutter/material.dart';

import 'package:the_movie/theme/app_button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login to your accaunt",
            style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatefulWidget {
  const _HeaderWidget({super.key});

  @override
  State<_HeaderWidget> createState() => __HeaderWidgetState();
}

class __HeaderWidgetState extends State<_HeaderWidget> {
  final TextStyle style = const TextStyle(
      color: Colors.blue, fontSize: 40, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text("Welcome to my APP ", style: style),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Register"),
                style:AppButtonStyle.linkButton,
              ),
              TextButton(
                onPressed: () {},
                child: Text("Verify email"),
                style:AppButtonStyle.linkButton,
              ),
            ],
          ),
          const SizedBox(height: 30),
          _FormWidget(),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController=TextEditingController(text:"admin");
   final _passwordTextController=TextEditingController(text:"admin");
  String ? errorText;
//login auth
  void _auth(){
  final login= _loginTextController.text;
   final password= _passwordTextController.text;
   if(login=="admin"&&password=="admin"){
    print("open app");
   Navigator.of(context).pushNamed( '/main_screen',);
   
   // Navigator.of(context).pushReplacementNamed( '/main_screen',);
   
    errorText=null;
   }else {
    errorText="не верный логин или пароль";
   }
  setState(() {
    
  });
  }
//password logic
  void _resetPassword(){
    print("reset Password");
  }
 
  @override
  Widget build(BuildContext context) {
     final TextStyle textStyle =
      const TextStyle(color: Colors.black, fontSize: 16);
  final textFieldDecoration = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10));
      final errorText=this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(errorText!=null)
        Text(errorText,
        style:TextStyle(color:Colors.red,fontSize: 20)
        ),
        const SizedBox(height: 20),
        Text("Username", style: textStyle),
        const SizedBox(height: 6),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 20),
        Text("Password", style: textStyle),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                onPressed: _auth,
                child: const Text("Login"),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                )),
                 const SizedBox(width: 30),
            TextButton(
              
              onPressed: _resetPassword,
              style: AppButtonStyle.linkButton,
              child: Text("Reset Password", style: textStyle),
            ),
          ],
        ),
      ],
    );
  }
}
