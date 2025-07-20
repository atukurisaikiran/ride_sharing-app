import 'package:flutter/material.dart';
import 'driver_arrival_screen.dart';

class ConnectingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => DriverArrivalScreen()));
    });

    return Scaffold(
      body: Column(
        children: [
          Container(height: 250, color: Colors.grey[300]),
          SizedBox(height: 40),
          Icon(Icons.electric_car, size: 60, color: Colors.blue),
          Text('Connecting you to a driver', style: TextStyle(fontSize: 18)),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Home 4.3km'),
            subtitle: Text('3342 Hill Street, Jacksonville'),
            trailing: TextButton(onPressed: () {}, child: Text("Change")),
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('\$12.32'),
            subtitle: Text('MasterCard 2321'),
            trailing: TextButton(onPressed: () {}, child: Text("Change")),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share this trip status'),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel Trip', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
