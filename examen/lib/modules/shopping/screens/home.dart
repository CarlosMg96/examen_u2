import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:examen/modules/shopping/entitys/bill.dart';
import 'package:examen/modules/shopping/screens/list_bills.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Bill> restaurants = [];
  final db = FirebaseFirestore.instance;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Escucha la colección de Firestore y llena la lista de restaurantes
    db.collection("restaurants").snapshots().listen((event) {
      List<Bill> newRestaurants = [];

      for (var doc in event.docs) {
        final restaurant = Bill(
          doc.data()['name'] ?? 'Unknown',
          doc.data()['description'] ?? 'No description',
          doc.data()['price'] ?? 0.0,
          List<String>.from(doc.data()['image'] ?? []),
        );
        newRestaurants.add(restaurant);
      }

      if (mounted) {
        setState(() {
          restaurants = newRestaurants;
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gastos"),
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushNamed(context, '/top'),
        },
        child: const Icon(Icons.chevron_right),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          return ListRestaurantData(
            restaurant: restaurants[index],
            onTap: () {
              // Aquí puedes navegar a otra pantalla y pasar los datos del restaurante
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RestaurantDetailScreen(restaurant: restaurants[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class RestaurantDetailScreen extends StatelessWidget {
  final Bill restaurant;

  const RestaurantDetailScreen({Key? key, required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurant.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Price: \$${restaurant.price}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            restaurant.image.isNotEmpty
                ? Image.network(restaurant.image[0])
                : Container(),
          ],
        ),
      ),
    );
  }
}
