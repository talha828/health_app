import 'package:flutter/material.dart';
import 'package:telehealth_app/signup_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height/1.5,color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 170,
                  child: Image.asset('assets/pharmacy.png',color: Colors.white,)),
              SizedBox(height: 30,),
              Text('Multitenant Telehealth',style: TextStyle(fontSize: 30,color:Colors.white,fontWeight: FontWeight.w500),),
              Text('Welcome to our app we are',style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.w300),),
              Text('here always to your help'
                  '',style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.w300),),
            ],
          ),),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    InkWell(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));},
                      child: Container(

                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          child: Text('Sign up',style: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontWeight: FontWeight.w300,

                          ),),
                        ),
                      ),
                    ),
                      Container(
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
                        ),
                      )
                  ],),
                ),
              ],
            ),
          ),
        )
      ],
    ),));
  }
}
