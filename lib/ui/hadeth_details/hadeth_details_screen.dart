import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/home/hadeth_model.dart';

class HdethDetailsScreen extends StatelessWidget {
  static const String routeName = 'HdethDetails';
  const HdethDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg3.png'),
            fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethModel.title),
        ),
        body: Column(
          children: [
            Expanded(
              child :  Card(
                  margin: EdgeInsets.all(20),
                  elevation: 20,
                  child: SingleChildScrollView(
                    child: Text(
                      hadethModel.content,
                      style: TextStyle(
                        fontSize: 30
                      ),
                    ),
                  )
                  ),
            ),
          ],
        )
        ),
    );
  }
}
