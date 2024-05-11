import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            image: AssetImage('assets/images/bg3.png'),
            fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
       appBar: AppBar(
         title: Text(args.title),
       ),
         body: Card(
             margin: EdgeInsets.all(20),
           elevation: 20,
           child: lines.isNotEmpty?
           ListView.separated(
               itemBuilder: (context, index) =>Text(
                   lines[index],
                   textDirection: TextDirection.rtl,
                   style: TextStyle(
                       color: Colors.black,
                     fontSize: 30
                   )
               ),
               separatorBuilder: (context, index) =>Container(
                 height: 4,
                 color: Theme.of(context).colorScheme.primary,
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