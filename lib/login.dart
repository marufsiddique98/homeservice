import 'Components/CustomButton.dart';
import 'Components/Input.dart';
import 'registration.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
          onPressed: (){
            Navigator.pop(context);
          }
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
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                  child: Center(child: Icon(Icons.home))
              ),
              const Text(
                'Find Your Own Service!',
                style: TextStyle(
                  fontSize: 25
                ),
              ),
              SizedBox(height: 30,),
              InputText(label: 'Email Address'),
              InputText(label: 'Password'),
              Row(
                children: <Widget>[
                  Row(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: remember,
                              onChanged: (val){
                                setState(() {
                                  remember=val!;
                                });
                              }
                          ),
                          const Text('Remember Me?')
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: (){
                                Navigator.push( context, MaterialPageRoute(builder: (context) => const Registration()),);
                              },
                              child: const Text('Forget Password?')
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              CustomButton(
                txt: 'Log In',
                action: (){
                  Navigator.push( context, MaterialPageRoute(builder: (context) => const LogIn()),);
                },
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                      height: 01,
                    ),
                  ),
                  Text('OR'),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                      height: 01,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 7),
                child: Row(
                  children: <Widget>[
                    Expanded(child: SizedBox()),
                    IconButton(
                        onPressed: (){},
                        icon: FaIcon(FontAwesomeIcons.google),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: FaIcon(FontAwesomeIcons.facebook),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: FaIcon(FontAwesomeIcons.twitter),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Text("Don't have and account?"),
                  TextButton(
                      onPressed: (){
                        Navigator.push( context, MaterialPageRoute(builder: (context) => const Registration()),);
                      },
                      child: const Text('Sign Up')
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
