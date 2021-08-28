
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height/2.5,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(
                        width: 170,
                        child: Image.asset('assets/pharmacy.png',color: Colors.red,)),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Multitenant Telehealth',style: TextStyle(fontSize: 25,),),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30,bottom: 30),
                child: Text('Sign up',style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                ),),
              )
            ],),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                  ),),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: 'User Name',
                  suffixIcon: Icon(Icons.supervised_user_circle_outlined)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: 'User Password',
                    suffixIcon: Icon(Icons.password)
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('forget Password?',style: TextStyle(color: Colors.grey.shade700),),
              )
            ],),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Text('Sign in',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 25
            ),),
          ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Divider(thickness: 1,color: Colors.grey,),
                  Container(color:Colors.white,child: Text('  Sign in with  ',style: TextStyle(color: Colors.grey),),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Icon(Icons.facebook,color: Colors.grey,size: 30,)
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Icon(Icons.mobile_screen_share_rounded,color: Colors.grey,size: 30,)
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Icon(Icons.mail,color: Colors.grey,size: 30,)
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
