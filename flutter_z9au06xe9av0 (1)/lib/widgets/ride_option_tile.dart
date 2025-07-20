import 'package:flutter/material.dart';

class RideOptionTile extends StatelessWidget {
  final Map<String, dynamic> option;

  RideOptionTile({required this.option});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.directions_car),
      title: Text(option['type']),
      subtitle: Text(option['time']),
      trailing: Text('\$${option['price']}'),
    );
  }
}
