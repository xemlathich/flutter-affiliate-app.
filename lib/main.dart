import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }

class MyApp extends StatelessWidget { @override Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, title: 'Affiliate App', theme: ThemeData( primarySwatch: Colors.blue, ), home: ProductListScreen(), ); } }

class ProductListScreen extends StatelessWidget { final List<Map<String, dynamic>> products = [ {'name': 'Laptop Gaming', 'price': 1200, 'discount': 10}, {'name': 'Tai nghe Bluetooth', 'price': 50, 'discount': 5}, {'name': 'Bàn phím cơ', 'price': 80, 'discount': 15}, ];

@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar(title: Text('Danh sách sản phẩm')), body: ListView.builder( itemCount: products.length, itemBuilder: (context, index) { final product = products[index]; return ListTile( title: Text(product['name']), subtitle: Text('Giá: $${product['price']} - Giảm: ${product['discount']}%'), trailing: Icon(Icons.shopping_cart), onTap: () { Navigator.push( context, MaterialPageRoute( builder: (context) => ProductDetailScreen(product: product), ), ); }, ); }, ), ); } }

class ProductDetailScreen extends StatelessWidget { final Map<String, dynamic> product;

ProductDetailScreen({required this.product});

@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar(title: Text(product['name'])), body: Padding( padding: EdgeInsets.all(16.0), child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [ Text('Giá: $${product['price']}', style: TextStyle(fontSize: 20)), Text('Giảm giá: ${product['discount']}%', style: TextStyle(fontSize: 18, color: Colors.red)), SizedBox(height: 20), ElevatedButton( onPressed: () {}, child: Text('Mua ngay'), ), ], ), ), ); } }


