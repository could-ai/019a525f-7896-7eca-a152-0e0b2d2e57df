import 'package:flutter/material.dart';
import '../models/destination_model.dart';
import '../widgets/destination_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Destination> destinations = [
    Destination(
      imageUrl: 'assets/images/paris.jpg',
      name: 'Eiffel Tower',
      location: 'Paris, France',
      description: 'The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.',
      rating: 4.8,
      price: 250.00,
    ),
    Destination(
      imageUrl: 'assets/images/borabora.jpg',
      name: 'Bora Bora',
      location: 'French Polynesia',
      description: 'Bora Bora is a small South Pacific island northwest of Tahiti in French Polynesia. Surrounded by sand-fringed motus (islets) and a turquoise lagoon protected by a coral reef, it’s known for its scuba diving.',
      rating: 4.9,
      price: 1200.00,
    ),
    Destination(
      imageUrl: 'assets/images/santorini.jpg',
      name: 'Santorini',
      location: 'Greece',
      description: 'Santorini is one of the Cyclades islands in the Aegean Sea. It was devastated by a volcanic eruption in the 16th century BC, forever shaping its rugged landscape.',
      rating: 4.7,
      price: 800.00,
    ),
     Destination(
      imageUrl: 'assets/images/rome.jpg',
      name: 'Colosseum',
      location: 'Rome, Italy',
      description: 'The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.',
      rating: 4.9,
      price: 300.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel App'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for a destination...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Popular Destinations',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ...destinations.map((dest) => DestinationCard(destination: dest)).toList(),
        ],
      ),
    );
  }
}
