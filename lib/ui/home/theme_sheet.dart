import 'package:flutter/material.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({Key? key}) : super(key: key);

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem('Light'),
          SizedBox(height: 15,),
          getUnSelectedItem('Dark')
        ],
      ),
    );
  }

  Widget getSelectedItem(String Themee){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Themee,
            style: Theme.of(context).textTheme.labelLarge
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).dividerColor,
        )
      ],
    );
  }

  Widget getUnSelectedItem(String Themee){
    return  Text(Themee,
        style: Theme.of(context).textTheme.labelSmall
    );
  }
}
