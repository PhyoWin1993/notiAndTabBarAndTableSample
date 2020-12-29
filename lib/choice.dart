import 'package:flutter/material.dart';

class Choice {
  final String title;
  final IconData icon;

  Choice({this.title, this.icon});
}

List<Choice> choices = [
  Choice(title: "Car", icon: Icons.directions_car),
  Choice(title: "Bike", icon: Icons.directions_bike),
  Choice(title: "Train", icon: Icons.directions_train),
  Choice(title: "Drive", icon: Icons.directions_walk),
  Choice(
    title: "Flight",
    icon: Icons.directions_ferry,
  )
];

class ChoicePage extends StatelessWidget {
  final Choice choice;

  const ChoicePage({Key key, this.choice}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              choice.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              choice.icon,
              size: 150.0,
            )
          ],
        ));
  }
}
