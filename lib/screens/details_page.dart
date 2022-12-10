import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage(
      {super.key,
      required this.imageList,
      required this.title,
      required this.rating,
      required this.description,
      required this.price});

  final List imageList;
  final String title;
  final double rating;
  final String description;
  final int price;

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
        children: [
          Image(
            image: NetworkImage(widget.imageList[0]),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (widget.title),
                  style: const TextStyle(fontSize: 25.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      (widget.rating.toString()),
                      style: const TextStyle(fontSize: 15.0),
                    ),
                    const Icon(
                      Icons.star_rate,
                      // color: Colors.yellow,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  (widget.description),
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${widget.price}\$',
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
