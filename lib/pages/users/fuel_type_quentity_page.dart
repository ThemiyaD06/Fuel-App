import 'package:flutter/material.dart';
import 'package:fuel_app/pages/users/successful_page.dart';
import 'package:fuel_app/widgets/widgets.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => PlaceOrderState();
}

class PlaceOrderState extends State<PlaceOrder> {
  String Action = "Petrol";
  TextEditingController quentityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _formKey;
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
        centerTitle: true,
        title: Text("Place Order"),
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Fuel Type:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          RadioListTile(
            value: "Petrol",
            groupValue: Action,
            title: Text("Petrol"),
            onChanged: (value) {
              setState(() {
                Action = value.toString();
              });
            },
          ),
          RadioListTile(
            value: "Diesel",
            groupValue: Action,
            title: Text("Diesel"),
            onChanged: (value) {
              setState(() {
                Action = value.toString();
              });
            },
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Quantity:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: quentityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the quantity of fuel',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: submit,
                    child: const Text('Submit'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  submit(){
    if(quentityController.text.isNotEmpty){
      nextScreen(context, SuccessfulPage());
    }
  }
}