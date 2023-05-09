import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessfulPage extends StatefulWidget {
  const SuccessfulPage({Key? key}) : super(key: key);

  @override
  _SuccessfulPageState createState() => _SuccessfulPageState();
}

class _SuccessfulPageState extends State<SuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EDF4),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 80,),
            Text('Successfuly added to queve', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.green),),
            Lottie.network('https://assets6.lottiefiles.com/packages/lf20_fbwbq3um.json',
              width: 1000,
              fit: BoxFit.fill,),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset: const Offset(0.0, 5.0)
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Exit with', style: TextStyle(fontSize: 22.0),),
                      Text('Fuel', style: TextStyle(fontSize: 22.0),),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green
                          ),
                          onPressed: (){},
                          child: Icon(Icons.check))
                    ],
                  ),
                  Column(
                    children: [
                      Text('Exit without', style: TextStyle(fontSize: 22.0),),
                      Text('Fuel', style: TextStyle(fontSize: 22.0),),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent
                          ),
                          onPressed: (){},
                          child: Icon(Icons.cancel))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
