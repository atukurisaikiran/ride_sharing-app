import 'package:flutter/material.dart';
import 'payment_success_screen.dart';

class DriverArrivalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => PaymentSuccessScreen()));
    });

    return Scaffold(
      body: Column(
        children: [
          Container(height: 250, color: Colors.grey[300]),
          ListTile(
            title: Text("Driver arrives soon"),
            trailing: Chip(label: Text("2 mins")),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.grey),
            title: Text('Joshua - 4.9 ⭐'),
            subtitle: Text('BMW X2 - 382-SOD23'),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Home 4.3km'),
            subtitle: Text('3342 Hill Street, Jacksonville'),
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('\$12.32'),
            subtitle: Text('MasterCard 2321'),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                TextButton(onPressed: () {}, child: Text("Cancel trip")),
                Spacer(),
                ElevatedButton(onPressed: () {}, child: Text("payment sucessful")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
