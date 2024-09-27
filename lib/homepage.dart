import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transport App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set app bar color
        title: Text('Transport App',
          style: TextStyle(
            color: Colors.white, // Set app bar title color
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Trusted by 1.5+ Lakh Transporters',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'What kind of service do you provide?',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Row of cards for selection
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ServiceCard(
                      title: 'Truck Operator',
                      description: 'Own or operate a truck',
                      imageAsset: 'assets/truck_operator.png', // Replace with your image path
                      onTap: () {
                        // Handle truck operator tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TruckOperatorDetailsPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ServiceCard(
                      title: 'Shipper',
                      description: 'Need to ship goods',
                      imageAsset: 'assets/shipper.png', // Replace with your image path
                      onTap: () {
                        // Handle shipper tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShipperDetailsPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle continue button press
              },
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ServiceCard widget
class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageAsset;
  final VoidCallback onTap;

  ServiceCard({
    required this.title,
    required this.description,
    required this.imageAsset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Image section
              Image.asset(
                imageAsset,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 20),
              // Text section wrapped in Expanded to prevent overflow
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Example pages for TruckOperator and Shipper
class TruckOperatorDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truck Operator Details'),
      ),
      body: Center(
        child: Text('Truck Operator Details go here'),
      ),
    );
  }
}

class ShipperDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipper Details'),
      ),
      body: Center(
        child: Text('Shipper Details go here'),
      ),
    );
  }
}