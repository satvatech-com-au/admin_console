import 'package:flutter/material.dart';

class InvoiceForm extends StatelessWidget {
  final List<Invoice> invoiceList = [];
  final TextEditingController itemController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  InvoiceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: itemController,
            decoration: const InputDecoration(labelText: 'Item'),
          ),
          TextField(
            controller: quantityController,
            decoration: const InputDecoration(labelText: 'Quantity'),
          ),
          TextField(
            controller: priceController,
            decoration: const InputDecoration(labelText: 'Price'),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              final invoice = Invoice(
                item: itemController.text,
                quantity: int.tryParse(quantityController.text) ?? 0,
                price: double.tryParse(priceController.text) ?? 0.0,
              );

              invoiceList.add(invoice);

              itemController.clear();
              quantityController.clear();
              priceController.clear();
              Navigator.pop(context);
            },
            child: const Text('Add Item'),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

class Invoice {
  final String item;
  final int quantity;
  final double price;

  Invoice({
    required this.item,
    required this.quantity,
    required this.price,
  });
}
