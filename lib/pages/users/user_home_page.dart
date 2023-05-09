import 'package:flutter/material.dart';
import 'package:fuel_app/pages/users/fuel_type_quentity_page.dart';
import 'package:fuel_app/widgets/widgets.dart';
import 'package:lottie/lottie.dart';

class UserHome extends StatefulWidget {
  final String stationName;
  const UserHome({Key? key,
  required this.stationName,
  }) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EDF4),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.stationName),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)
            ),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Color(0xFFFE5F75), Color(0xFFFC9842)]),
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)
            )
        ),
      ),
      body: Column(
        children: [
          Lottie.network('https://assets8.lottiefiles.com/packages/lf20_p1bkxuf1.json',
            width: 500,
            fit: BoxFit.fill,),
          //SizedBox(height: 25,),
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
            child: Column(
              children: [
                Text('Oil Quantity', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('Petrol'),
                        SizedBox(height: 5.0,),
                        Text('5100L')
                      ],
                    ),
                    SizedBox(width: 50.0,),
                    Column(
                      children: [
                        Text('Diesal'),
                        SizedBox(height: 5.0,),
                        Text('5100L')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Petrol Queve', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                    SizedBox(height: 10.0,),
                    Text('11', style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text('Diesal Queve', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                    SizedBox(height: 10.0,),
                    Text('4', style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFF5722)
              ),
              onPressed: (){
                nextScreen(context, PlaceOrder());
              },
              child: Text('Add To Qeuve'))
        ],
      ),
    );
  }
}


