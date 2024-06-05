import 'package:flutter/material.dart';
import 'package:islamy_app_c10/style/app_theme.dart';
import 'package:islamy_app_c10/ui/home/tabs/quran_widget.dart';
import 'package:islamy_app_c10/ui/home/tabs/radio_widget.dart';
import 'package:islamy_app_c10/ui/home/tabs/sebha_widget.dart';
import 'package:islamy_app_c10/ui/home/tabs/settings_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import 'tabs/ahedeth_widget.dart';

class HomeScreen extends StatefulWidget {
 static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int currentNavIndex = 0;
 List<Widget> navWidget = [
   QuranWidget(),
   AhadethWidget(),
   SebhaWidget(),
   RadioWidget(),
   SettingsWidget(),
 ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppTheme.isDark?'assets/images/dark_bg.png':'assets/images/bg3.png'),
                fit: BoxFit.fill
        ),
      ),
      child: Scaffold (
       appBar: AppBar(
         title: Text(AppLocalizations.of(context)!.islami),
       ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,
            onTap: (index) {
            setState(() {
              currentNavIndex = index;
            });
            },
            items: [
              BottomNavigationBarItem(
               backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage('assets/images/quran.png')),
              label:AppLocalizations.of(context)!.quran
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png')),
              label: AppLocalizations.of(context)!.ahadeth,
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.sebha,
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings
              ),
            ]
        ),
        body: navWidget[currentNavIndex],
      ),
    );
  }
}