import 'package:flutter/material.dart';

import 'location_selection_screen.dart' show LocationSelectionScreen;

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 100),
            Icon(Icons.check_circle, color: Colors.green, size: 100),
            Text(
              'Payment successful',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text('Successfully paid \$150'),
            Divider(),
            ListTile(title: Text('Transaction ID'), subtitle: Text('4352 2748 3920')),
            ListTile(title: Text('Date'), subtitle: Text('1 September 2024')),
            ListTile(title: Text('Type'), subtitle: Text('Credit Card')),
            ListTile(title: Text('Nominal'), subtitle: Text('\$150.45')),
            ListTile(title: Text('Admin'), subtitle: Text('\$0.50')),
            ListTile(title: Text('Status'), subtitle: Text('Success')),

            Spacer(),

            Text(
              'Total: \$150.50',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            // Home Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => LocationSelectionScreen()));
                },
                icon: Icon(Icons.home),
                label: Text("Go to Home"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
