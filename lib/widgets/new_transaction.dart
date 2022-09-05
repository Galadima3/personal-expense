// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  NewTransaction({Key? key, required this.addTx}) : super(key: key);
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.2,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            TextButton(
              onPressed: () {
                addTx(_titleController.text, double.parse(_amountController.text));
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(
                  fontSize: 15.2,
                  color: Colors.purple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
