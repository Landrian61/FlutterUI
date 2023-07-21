import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpecialsPage extends StatelessWidget {
  SpecialsPage({Key? key}) : super(key: key);

  String? myName = 'Andrew';

  storeMyAge() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('myName',myName!);
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap:() => storeMyAge(),
          child: const  Center(
            child: Text('NickName'),
          ),
        ),
      ],
    );
  }
}
