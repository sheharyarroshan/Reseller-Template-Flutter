import 'package:app/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Add_Reseller extends StatefulWidget {
  const Add_Reseller({super.key});

  @override
  State<Add_Reseller> createState() => _Add_ResellerState();
}

class _Add_ResellerState extends State<Add_Reseller> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.arrow_back_ios_new_sharp),
          ),
          elevation: 0,
          backgroundColor: kPrimary,
        ),
        body: Column(
          children: [
            Container(
              height: 90,
              width: Width,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
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
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Add Reseller',
                    style: TextStyle(
                        color: kwhite,
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
