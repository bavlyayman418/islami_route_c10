import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islamy_app_c10/ui/home/home_screen.dart';
import 'package:islamy_app_c10/ui/quran_details/quran_details_screen.dart';

void main() {
  print('Hello');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 50,
          ),
          unselectedIconTheme: IconThemeData(
            size: 40,
          ),
        ) ,
       scaffoldBackgroundColor: Colors.transparent,
       appBarTheme: AppBarTheme(
           centerTitle: true,
           titleTextStyle: TextStyle(
             color: Colors.black,
             fontSize: 40,
             fontWeight: FontWeight.bold

           ),
           color: Colors.transparent
       ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),
          secondary: Color(0xffB7935F).withOpacity(0.57),
          onPrimary: Color(0xffF9F8F8),
          onSecondary: Color(0xff242424),
        ),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        QuranDetailsScreen.routeName:(_) => QuranDetailsScreen(),
        HdethDetailsScreen.routeName:(context) => HdethDetailsScreen(),
      },
    );
  }
}
