import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({Key? key}) : super(key: key);

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {
  double angle = 0;
  int index = 0;
  int counter = 0;
  List<String> doaa = ['الحمدالله','سبحان الله','لله اكبر'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/head_of_seb7a.png',
                        height: 100
                    )
                ),
              ),
              GestureDetector(
                onTap: (){
                  counterMethod();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Transform.rotate(
                          angle: angle,
                          child: Image.asset('assets/images/body_of_seb7a.png'))),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(AppLocalizations.of(context)!.counter,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(30),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Text(counter.toString(),
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor
                )
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(30),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Text(doaa[index],
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )
            ),
          )
        ],
      ),
    );
  }

counterMethod(){
    angle += 10;
    if(counter==33){
      counter = 0;
      if(index<doaa.length-1){
        index++;
      }else{
        index = 0;
      }
    }else{
    counter++;
}
    setState(() {

    });
  }

}