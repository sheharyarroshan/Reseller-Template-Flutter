import 'package:app/Views/add_reseller.dart';
import 'package:app/Views/sign_in.dart';
import 'package:app/Views/sign_up.dart';
import 'package:app/notification.dart';
import 'package:app/views/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reseller Ledger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: push_notif(),
    );
  }
}
