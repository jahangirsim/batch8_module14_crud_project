import 'package:flutter/material.dart';
import 'package:module14_crud_project/model/products.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(product.image ?? ""),
      title: Text("Product Name: ${product.productName ?? ''}"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Product Code: ${product.productCode ?? ''}"),
          Text("Unit Price: ${product.unitPrice ?? ''}"),
          Text("Qty: ${product.qty ?? ''}"),
          Text("Total Price: ${product.totalPrice ?? ''}"),
        ],
      ),
      trailing: Wrap(
        children: [
          Container(
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  )),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              )),
          Container(
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                )
                //border: Border.symmetric(vertical: BorderSide())
                ),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/update-product-screen');
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
