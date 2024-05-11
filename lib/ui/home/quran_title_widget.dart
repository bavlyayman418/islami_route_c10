import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/quran_details/quran_details_screen.dart';

class QuranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;
  int index;
  QuranTitleWidget({Key? key,required this.title,required this.versesNumber,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments: QuranDetailsArs(title, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 25
              ),
          ),
          Text(versesNumber,
              style: TextStyle(
                fontSize: 25
              ),
          ),
        ],
      ),
    );
  }
}