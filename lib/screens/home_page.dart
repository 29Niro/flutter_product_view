import 'package:flutter/material.dart';
import 'package:flutter_product_view/models/product_model.dart';
import 'package:flutter_product_view/screens/details_page.dart';
import 'package:flutter_product_view/services/api_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<ProductModel>? _productModel = [];

  @override
  void initState() {
    super.initState();
    _getProductDetails();
  }

  void _getProductDetails() async {
    _productModel = await ApiServices().getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        leading: const BackButton(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: _productModel!.length,
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height / 4,
            margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
            child: Card(
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(_productModel![index].thumbnail),
                    )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Title',
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        'Brand',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        'Price\$',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DetailsPage()));
                          },
                          child: const Text(
                            "View >>>",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
