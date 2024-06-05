import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/home/theme_sheet.dart';

import '../language_sheet.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Language',style: TextStyle(fontSize: 20)),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showLanguageBottomShet();
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadiusDirectional.circular(15),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary
                  )
                ),
                child: Text('English',
                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                       color: Theme.of(context).primaryColor
                     ),
                )
            ),
          ),
          SizedBox(height: 20,),
          Text('Theme',style: TextStyle(fontSize: 20)),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showThemeBottomShet();
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                    borderRadius: BorderRadiusDirectional.circular(15),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary
                    )
                ),
                child: Text('Light',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor
                ),
                )
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomShet() {
    showModalBottomSheet(context: context, builder: (context) {
      return LanguageSheet();
    }
    );
  }

  void showThemeBottomShet() {
    showModalBottomSheet(context: context, builder: (context) {
      return ThemeSheet();
    }
    );
  }
  }