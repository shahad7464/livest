import 'package:flutter/material.dart';

void main() {
  runApp(LiveTest());
}

class LiveTest extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingList(),
    );
  }
}

class ShoppingList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              _showSnackBar(context, 'Cart is empty');
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
        children: [
          _buildShoppingItem(Icons.share, 'Apples',),
          _buildShoppingItem(Icons.share, 'cat'),
          _buildShoppingItem(Icons.share, 'Superman'),
          _buildShoppingItem(Icons.share, 'love'),
          _buildShoppingItem(Icons.share, 'Batman'),

        ],
      ),
    );
  }

  Widget _buildShoppingItem(IconData icon, String name) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}