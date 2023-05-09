import 'package:flutter/material.dart';



class StationHomePage extends StatefulWidget {
  const StationHomePage({Key? key}) : super(key: key);

  @override
  State<StationHomePage> createState() => _StationHomePageState();
}

class _StationHomePageState extends State<StationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text("Station Name",
        ),
      ),
      body: Column(
        children: [
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
                SizedBox(height: 20,),
                Text('Fuel Avalability', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Petrol', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                        SizedBox(height: 7,),
                        Text('2500L', style: TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.w600),),
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF77729)
                        ),
                        onPressed: (){},
                        child: Text('Add petrol'))
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Diesel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                        SizedBox(height: 7,),
                        Text('3500L', style: TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.w600),),
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF77729)
                        ),
                        onPressed: (){},
                        child: Text('Add petrol'))
                  ],
                ),
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
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text('Queue Details', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('Petrol Queue', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                        SizedBox(height: 10.0,),
                        Text('11', style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text('Diesal Queue', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                        SizedBox(height: 10.0,),
                        Text('4', style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}