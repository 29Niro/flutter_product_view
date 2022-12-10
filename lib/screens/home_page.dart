import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_product_view/models/product_model.dart';
import 'package:flutter_product_view/screens/details_page.dart';
import 'package:flutter_product_view/screens/login_page.dart';
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
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        leading: BackButton(
            color: Colors.white,
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                // ignore: avoid_print
                print("Signed Out");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const LoginPage())));
              });
            }),
      ),
      body: _productModel == null || _productModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
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
                          height: 200,
                          decoration: BoxDecoration(
                            image: _productModel![index].thumbnail != ''
                                ? DecorationImage(
                                    image: NetworkImage(
                                        _productModel![index].thumbnail),
                                    fit: BoxFit.cover)
                                : const DecorationImage(
                                    image: AssetImage('images/dummy.jpg'),
                                    fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 10.0),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  _productModel![index].title,
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  _productModel![index].brand,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '${_productModel![index].price}\$',
                                style: const TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.red),
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
                                            builder: (context) => DetailsPage(
                                                  imageList:
                                                      _productModel![index]
                                                          .images,
                                                  title: _productModel![index]
                                                      .title,
                                                  description:
                                                      _productModel![index]
                                                          .description,
                                                  price: _productModel![index]
                                                      .price,
                                                  rating: _productModel![index]
                                                      .rating,
                                                )));
                                  },
                                  child: const Text(
                                    "View >>>",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
