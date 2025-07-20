import 'package:flutter/material.dart';
import 'connecting_screen.dart';
import '../widgets/ride_option_tile.dart';

class RideOptionsScreen extends StatefulWidget {
  @override
  _RideOptionsScreenState createState() => _RideOptionsScreenState();
}

class _RideOptionsScreenState extends State<RideOptionsScreen> {
  final List<Map<String, dynamic>> rideOptions = [
    {'type': 'Standard 4-seat', 'price': 12.32, 'time': '4:23PM - 6 min', 'cheaper': true},
    {'type': 'Premium 4-seat', 'price': 22.32, 'time': '4:26PM - 8 min'},
    {'type': 'Standard 4-seat', 'price': 16.32, 'time': '4:20PM - 3 min'},
    {'type': 'VIP', 'price': 28.50, 'time': '4:23PM - 6 min'},
  ];

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Placeholder for map or image
          Container(
            height: 250,
            color: Colors.grey[300],
            child: Center(child: Text("Map Placeholder")),
          ),

          // Ride options list
          Expanded(
            child: ListView.builder(
              itemCount: rideOptions.length,
              itemBuilder: (context, index) {
                final option = rideOptions[index];
                final isSelected = index == selectedIndex;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    color: isSelected ? Colors.blue.withOpacity(0.1) : null,
                    child: RideOptionTile(option: option),
                  ),
                );
              },
            ),
          ),

          // Book Now button (only visible if one option is selected)
          if (selectedIndex != null)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ConnectingScreen()),
                    );
                  },
                  child: Text('Book Now'),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
