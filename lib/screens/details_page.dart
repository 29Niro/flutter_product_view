import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage('images/dummy.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Title',
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Rating',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Description',
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Price\$',
            style: TextStyle(color: Colors.red, fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
