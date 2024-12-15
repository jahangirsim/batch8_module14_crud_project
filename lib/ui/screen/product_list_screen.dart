import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:module14_crud_project/model/products.dart';
import 'package:module14_crud_project/ui/wigets/product_item.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];

  bool _getProductListInProgress = false;

  @override
  void initState() {
    super.initState();
    _getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        elevation: 5,
        title: const Text(
          "Products Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Visibility(
          visible: _getProductListInProgress == false,
          replacement: Center(
            child: CircularProgressIndicator(),
          ),

          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return ProductItem(product: productList[index]);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/add-new-product-screen");
        },
        backgroundColor: Colors.grey.shade300,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }

  Future<void> _getProduct() async {
    _getProductListInProgress == true;
    setState(() {});
    Uri uri = Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
    Response response = await get(uri);
    //print(response.statusCode);
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      //print(decodedData['status']);
      for (Map<String, dynamic> p in decodedData['data']) {
        Product product = Product(
            id: p['_id'],
            productName: p['ProductName'],
            productCode: p['ProductCode'],
            unitPrice: p['UnitPrice'],
            qty: p['Qty'],
            image: p['Img'],
            totalPrice: p['TotalPrice'],
            createdDate: p['CreatedDate'],
        );
        productList.add(product);
        setState(() {});
      }
      _getProductListInProgress = false;
      setState(() {});
    }
  }
}
