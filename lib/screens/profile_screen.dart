import 'package:flutter/material.dart';
import '../controllers/auth_controller.dart';
import 'package:get/get.dart';

class profilescreen extends StatelessWidget {
  profilescreen({Key? key}) : super(key: key);
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 10),
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'Full Name',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'Email',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'About',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'Settings',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          MaterialButton(
            color: Colors.red,
            textColor: Colors.grey[300],
            padding: EdgeInsets.all(15.0),
            child: Text("Signout"),
            onPressed: (() => {AuthController.instance.logout()}),
          ),
        ],
      ),
    );
  }
}
