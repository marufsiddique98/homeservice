import 'Components/CustomButton.dart';
import 'login.dart';
import 'package:flutter/material.dart';

import 'Components/Input.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _LogInState();
}

class _LogInState extends State<Registration> {
  bool remember=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: ()=> Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: (){},
            child: Text(
              'Skip',
              style:TextStyle(
                color: Colors.black,
              ) ,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  'User Registration',
                style: TextStyle(
                  fontSize: 21
                ),
              ),
              InputText(label: 'First Name',),
              InputText(label: 'Last Name',),
              InputText(label: 'Mobile Number',),
              InputText(label: 'Email Address',),
              InputText(label: 'Password',),
              CustomButton(
                txt: 'Register',
                action: ()=>Navigator.push( context, MaterialPageRoute(builder: (context) => const LogIn()),),
              ),
              Row(
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Text("Already have and account?"),
                  TextButton(
                      onPressed: (){
                        Navigator.push( context, MaterialPageRoute(builder: (context) => const LogIn()),);
                      },
                      child: const Text('Log In')
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
