import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app_c10/style/app_theme.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = 'QuranDetailsScreen';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArs;
    if(lines.isEmpty){
      reedQuranFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppTheme.isDark?'assets/images/dark_bg.png':'assets/images/bg3.png'),
            fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
       appBar: AppBar(
         title: Text(args.title),
       ),
         body: Card(
           child: lines.isNotEmpty?
           ListView.separated(
               itemBuilder: (context, index) =>Text(
                   lines[index],
                   textDirection: TextDirection.rtl,
                   style: Theme.of(context).textTheme.bodyMedium
               ),
               separatorBuilder: (context, index) =>Container(
                 height: 4,
                 color: Theme.of(context).dividerColor,
               ) ,
               itemCount: lines.length
           )
               :Center(
                child:
                  CircularProgressIndicator(),
           )
         ),
      ),
    );
  }

   List<String> lines = [];

  void reedQuranFile(int index)async{
    String quran = await rootBundle.loadString('assets/files/${index+1}.txt');
    lines = quran.split('/n');
    setState(() {

    });
  }
}

class QuranDetailsArs{
  String title;
  int index;
  QuranDetailsArs(this.title,this.index);
}