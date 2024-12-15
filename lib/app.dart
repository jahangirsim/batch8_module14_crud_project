import 'package:flutter/material.dart';
import 'package:module14_crud_project/ui/screen/add_new_product_screen.dart';
import 'package:module14_crud_project/ui/screen/product_list_screen.dart';
import 'package:module14_crud_project/ui/screen/update_product_screen.dart';

class CRUDApp extends StatelessWidget {
  const CRUDApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      initialRoute: '/',
      routes: {
        '/' : (context) => const ProductListScreen(),
        '/add-new-product-screen' : (context) => const AddNewProductScreen(),
        '/update-product-screen' : (context) => const UpdateProductScreen(),
      },
      //home: ProductListScreen(),
    );
  }
}
