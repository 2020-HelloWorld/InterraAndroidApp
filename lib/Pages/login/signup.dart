import 'package:flutter/material.dart';
import 'brand_signup.dart';
import 'user_signup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top:0.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color:Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100.0,top: 80,bottom: 40),
                    child: Row(
                      children: [
                        Icon(Icons.square_outlined,size: 45,),
                        Text("|",style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.w800,
                        ),),
                        Text("INTERRA",style: TextStyle(
                            fontSize: 35,
                          fontWeight: FontWeight.w700,
                        ),)
                      ],
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left:15,top:30),
                  decoration: BoxDecoration(
                    color:Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(10,10)
                      )
                    ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    // border: Border.all(
                    //   color: Colors.black,
                    // ),
                  ),
                  height: 600,
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        child: TabBar(
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                width: 1.5,
                                color: Colors.black26.withOpacity(0.2),
                              ),
                              insets: EdgeInsets.only(left: 5),
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [

                              Tab(child: Container(
                                height: 70,
                            alignment: Alignment.center,
                            child:Text(
                              "Brand",
                              style: TextStyle(
                                  color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                            ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                          ),
                              ),

                              Tab(child: Container(
                                height: 70,
                                alignment: Alignment.center,
                                child:Text(
                                  "Influencer",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),

                                ),
                              ),
                              ),
                            ]
                        ),
                      ),

                      Expanded(
                        child: TabBarView(
                          children: [
                            BrandSignup(),
                            UserSignup(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}

