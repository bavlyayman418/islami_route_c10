import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app_c10/ui/home/hadeth_title.dart';

import 'hadeth_model.dart';

class AhadethWidget extends StatefulWidget {

  @override
  State<AhadethWidget> createState() => _AhadethWidgetState();
}

class _AhadethWidgetState extends State<AhadethWidget> {
  @override
  Widget build(BuildContext context){
    if(allAhadeth.isEmpty){
      loadAhadethFile();
    }
    return Column(
      children: [
        Expanded(
            child: Image.asset('assets/images/ahadeth_image.png')),
      Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.symmetric(horizontal: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 5
          ))
        ),
        child: Text('Ahadeth',
        style: TextStyle(
          fontSize: 25
        ),),
      ),
        Expanded(
          flex: 3,
            child: allAhadeth.isEmpty
                ?Center(
                 child: CircularProgressIndicator(),
            )
              :ListView.separated(
                itemBuilder: (context, index) => HadethTitleItem(hadeth: allAhadeth[index],),
                separatorBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    width: double.infinity,
                    height: 2,
                    color: Theme.of(context).primaryColor,
                  );
                },
                itemCount: allAhadeth.length)
        )

      ],
    );
  }

  List<HadethModel> allAhadeth = [] ;

  void loadAhadethFile()async{
    String ahadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = ahadethContent.trim().split('#');
    for(int i = 0 ; i < hadethList.length ; i++){
      List<String> oneHadeth = hadethList[i].trim().split('\n');
      String hadethTitle = oneHadeth[0];
      oneHadeth.removeAt(0);
      String hadethContent = oneHadeth.join(' ');
      allAhadeth.add(HadethModel(hadethTitle, hadethContent));
    }
    setState(() {

    });
  }
}