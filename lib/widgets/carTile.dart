import 'package:flutter/material.dart';
import 'package:kt5/models/car/car.dart';

class CarTile extends StatelessWidget {
  final car = Car(
      brand: "Mitsubisi",
      model: "Aron",
      price: 342,
      availability: true);
  final count = 1;
  // const CarTile({super.key, required this.car,});
  CarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: const Color.fromARGB(255, 0, 0, 0),
              width: 2,
            )),
        child: ListTile(
          leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("$count")]),
          title: Text('${car.brand} ${car.model}'),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Price: ${car.price}\$",
              style: TextStyle(color: Colors.black),),
            ],
          ),
          trailing: car.availability == true
              ? Icon(
                  Icons.mood,
                  color: Colors.green,
                )
              : Icon(
                  Icons.mood_bad,
                  color: Colors.red,
                ),
        ));
  }
}
