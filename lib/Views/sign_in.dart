import 'package:app/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: KBackground,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Center(
                child: Text(
                  "Reseller Ledger",
                  style: TextStyle(
                      color: kwhite, fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              height: 200.0,
              width: Width,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(200),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, top: 150, right: 25, bottom: 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: kwhite,
                                      fontSize: 22,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              height: 63,
                              width: 159,
                              decoration: BoxDecoration(
                                color: kPrimary,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: kPrimary,
                                      fontSize: 22,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              height: 63,
                              width: 159,
                              decoration: BoxDecoration(
                                color: kwhite,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      height: 65,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                          border: Border.all(color: kBlack)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 10, left: 40, right: 40),
                      child: TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimary),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kBlue),
                          ),
                          hintText: 'Please enter email',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 0.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 10, left: 40, right: 40),
                      child: TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimary),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kBlue),
                          ),
                          hintText: 'Please enter password',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 0.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Center(
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: kwhite,
                                fontSize: 22,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        height: 63,
                        width: 159,
                        decoration: BoxDecoration(
                          color: kPrimary,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'OR',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Login Via Google',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset(
                          'assets/google.png',
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ), // maincolumn
                height: 650,
                width: 380,
                decoration: BoxDecoration(
                  color: kwhite,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0.0,
                      color: kGrey,
                      blurRadius: 15.0,
                      offset: const Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
