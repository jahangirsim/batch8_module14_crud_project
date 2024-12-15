import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({Key? key}) : super(key: key);

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();
TextEditingController _productNameTEController = TextEditingController();
TextEditingController _productCodeTEController = TextEditingController();
TextEditingController _productPriceTEController = TextEditingController();
TextEditingController _qtyTEController = TextEditingController();
TextEditingController _totalPriceTEController = TextEditingController();
TextEditingController _imageTEController = TextEditingController();

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Product"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _productNameTEController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Product Name";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Product Name", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _productCodeTEController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Product Code";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Product Code", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _productPriceTEController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Unit Price";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Unit Price", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _qtyTEController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Qty";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Qty", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _totalPriceTEController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Total Price";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Total", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _imageTEController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Image link";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Image", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, "/");
                      }
                    },
                    child: const Text("Add"))
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _productNameTEController.dispose();
    _productCodeTEController.dispose();
    _productPriceTEController.dispose();
    _totalPriceTEController.dispose();
    _qtyTEController.dispose();
    _imageTEController.dispose();
    super.dispose();
  }
}
