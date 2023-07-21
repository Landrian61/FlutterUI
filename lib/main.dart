import 'package:best_buy/bottom_nav_pages/home_page.dart';
import 'package:best_buy/bottom_nav_pages/settings_page.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_pages/specials_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List pages = [  SpecialsPage(), const HomePage(), const SettingsPage()];
  int pageIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       body: pages[pageIndex],
       bottomNavigationBar: Container(
           height: 70,
           width: MediaQuery.of(context).size.width / 10,
         margin: const EdgeInsets.fromLTRB(20,0 , 20, 5),
         padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
         decoration: BoxDecoration(
           color: Colors.orangeAccent , borderRadius:  BorderRadius.circular(20)),
         child:  Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             GestureDetector(
               onTap: () {
                 setState(() {
                   pageIndex = 0;
                 });
               },
               child: SizedBox(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(
                       Icons.calendar_today,
                       color: pageIndex == 0?Colors.redAccent: Colors.black,
                     ),
                      Text("Today's Special" ,style: TextStyle(color: pageIndex == 0 ? Colors.redAccent: Colors.black ),)
                   ],
               )
               ),
             ),
             GestureDetector(
               onTap: () {
                 setState(() {
                   pageIndex = 1;
                 });
               },
               child: SizedBox(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.fastfood,
                         color: pageIndex == 1?Colors.redAccent: Colors.black,
                       ),
                        Text("Foods" , style: TextStyle(color: pageIndex == 1 ? Colors.redAccent: Colors.black ),)
                     ],
                   )
               ),
             ),
             GestureDetector(
               onTap: () {
                 setState(() {
                   pageIndex = 2;
                 });
               },
               child: SizedBox(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.settings,
                         color: pageIndex == 2?Colors.redAccent: Colors.black,
                       ),
                        Text("Settings", style: TextStyle(color: pageIndex == 2 ? Colors.redAccent: Colors.black ),)
                     ],
                   )
               ),
             ),],
       ),
     ),
    ));
  }
}
