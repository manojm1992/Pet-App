import 'package:flutter/material.dart';
import 'package:flutter_application_1/class.dart';

class DetailsPage extends StatelessWidget {
  final Pet pet;

  DetailsPage({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(pet.imageUrl),
            SizedBox(height: 16.0),
            Text('Name: ${pet.name}'),
            Text('Age: ${pet.age}'),
            Text('Price: \$${pet.price.toString()}'),
            Text('Adopted: ${pet.adopted ? 'Yes' : 'No'}'),
            SizedBox(height: 16.0),
            if (!pet.adopted)
              ElevatedButton(
                onPressed: () {
                  // Implement your adoption logic here
                  // For example, you can show a dialog or navigate to a confirmation page
                },
                child: Text('Adopt'),
              ),
          ],
        ),
      ),
    );
  }
}
