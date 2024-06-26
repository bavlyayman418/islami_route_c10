import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/home/hadeth_model.dart';

import '../hadeth_details/hadeth_details_screen.dart';

class HadethTitleItem extends StatelessWidget {
  HadethModel hadeth;
   HadethTitleItem({Key? key,required this.hadeth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HdethDetailsScreen.routeName,arguments: hadeth);
      },
      child: Text(
          hadeth.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
