import 'package:app/Constants/colors.dart';
import 'package:app/Constants/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: SizedBox(
        height: 400,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Drawer(
            backgroundColor: kPrimary,
            child: Center(
              child: Text(
                'Dashboard',
                style: TextStyle(
                    color: kwhite,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.logout_outlined),
          )
        ],
        elevation: 0.0,
        backgroundColor: kPrimary,
        centerTitle: true,
        title: Text(
          'Kurti Arts',
          style: TextStyle(
              color: kwhite,
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        ),
      ),
      backgroundColor: KBackground,
      body: Stack(
        children: [
          Container(
            height: 130,
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 20),
            child: Container(
              // Dashboard container
              height: 200,
              width: 280,
              decoration: BoxDecoration(
                color: kwhite,
                border: Border.all(color: kPrimary),
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 0.0,
                    color: kwhite,
                    blurRadius: 0.0,
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      0.0, // Move to bottom 10 Vertically
                    ),
                  ),
                ],
              ),
              // Dashboard container
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Rs 5000',
                            style: TextStyle(
                                color: kGreen,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Profit',
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Container(
                        height: 110,
                        width: 1,
                        color: kPrimary,
                      ),
                      Column(
                        children: [
                          Text(
                            'Rs 5000',
                            style: TextStyle(
                                color: kRed,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Total',
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: kGrey,
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'View Report',
                          style: TextStyle(
                              color: kPrimary,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          Icons.summarize,
                          color: kPrimary,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: kPrimary,
                          child: Text(
                            'R',
                            style: TextStyle(color: kwhite, fontSize: 20),
                          ),
                        ),
                        title: Text(
                          'Name',
                          style: TextStyle(
                              color: kBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: Text('03XXXXXXXX'),
                        trailing: IconButton(
                          onPressed: (() {}),
                          icon: Icon(
                            Icons.edit_note_rounded,
                            color: kGreen,
                            size: 30,
                          ),
                        ),
                      ),
                      Divider(
                        height: 10,
                        color: kPrimary,
                        thickness: 0.4,
                        indent: 15,
                        endIndent: 15,
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
