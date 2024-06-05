import 'package:flutter/material.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({Key? key}) : super(key: key);

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem('English'),
          SizedBox(height: 15,),
          getUnSelectedItem('العربيه')
        ],
      ),
    );
  }

   Widget getSelectedItem(String Language){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Language,
            style: Theme.of(context).textTheme.labelLarge
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).dividerColor,
        )
      ],
    );
   }

  Widget getUnSelectedItem(String Language){
    return  Text(Language,
        style: Theme.of(context).textTheme.labelSmall
    );
  }
}
