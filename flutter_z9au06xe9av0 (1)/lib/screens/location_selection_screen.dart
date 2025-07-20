import 'package:flutter/material.dart';
import 'ride_options_screen.dart';

class LocationSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Location'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on_outlined),
                hintText: 'Where to?',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Work'),
            subtitle: Text('11-199 NTR Circles, vijayawada, IN'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => RideOptionsScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('11-19 Dhanikula Road, vijayawada, IN'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => RideOptionsScreen()));
            },
          ),
        ],
      ),
    );
  }
}
