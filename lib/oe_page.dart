import 'package:flutter/material.dart';
import 'package:flutter_application_1/class.dart';
import 'package:flutter_application_1/details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Pet> pets = [
    Pet(name: 'German Shepherd', age: 2, price: 200.0, imageUrl: 'assets/dog.1.jpg', adopted: false),
    Pet(name: 'Cat', age: 1, price: 150.0, imageUrl: 'assets/cat.jpg', adopted: true),
    Pet(name: 'Pigeon', age: 1, price: 100.0, imageUrl: 'assets/dog.1.jpg', adopted: false),
    Pet(name: 'Rabbit', age: 1, price: 120.0, imageUrl: 'assets/rabitt.jpg', adopted: false),
    Pet(name: 'Fish', age: 1, price: 50.0, imageUrl: 'assets/fisk.jpg', adopted: false),
    Pet(name: 'Turtle', age: 3, price: 80.0, imageUrl: 'assets/trtile.jpg', adopted: true),
    Pet(name: 'Hamster', age: 1, price: 70.0, imageUrl: 'assets/Hamster.jpg', adopted: false),
    Pet(name: 'Macaw Parrot', age: 1, price: 90.0, imageUrl: 'assets/dog.1.jpg', adopted: false),
    Pet(name: 'Parrot', age: 2, price: 250.0, imageUrl: 'assets/dog.1.jpg', adopted: false),
    Pet(name: 'Husky Dog', age: 1, price: 180.0, imageUrl: 'assets/dog.1.jpg', adopted: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Adoption'),
      ),
      body: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (context, index) {
          Pet pet = pets[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(pet.imageUrl),
            ),
            title: Text(pet.name),
            subtitle: Text('Age: ${pet.age} Price: \$${pet.price.toString()}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(pet: pet),
                ),
              );
            },
            trailing: pet.adopted ? Text('Already Adopted') : null,
          );
        },
      ),
    );
  }
}


