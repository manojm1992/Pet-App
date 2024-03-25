import 'package:flutter/material.dart';
import 'package:flutter_application_1/class.dart';

class HistoryPage extends StatelessWidget {
  final List<Pet> adoptedPets;

  HistoryPage({required this.adoptedPets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adoption History'),
      ),
      body: ListView.builder(
        itemCount: adoptedPets.length,
        itemBuilder: (context, index) {
          Pet pet = adoptedPets[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(pet.imageUrl),
            ),
            title: Text(pet.name),
            subtitle: Text('Age: ${pet.age} Price: \$${pet.price.toString()}'),
            trailing: Text('Adopted'),
          );
        },
      ),
    );
  }
}
