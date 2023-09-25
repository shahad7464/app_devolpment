import 'package:flutter/material.dart';

main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<ProductList> {
  int counter = 0;
  void incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Divider(height: 15,),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product No:1'),
                Text('USD 10.00') ,
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: null, child: Text('Buy Now')),

              ],
            )
          ),
          Divider(height: 20),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product No:2'),
                Text('USD 20.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 20),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product No:3'),
                Text('USD 25.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product No: 4'),
                Text('USD 30.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:5'),
                Text('USD 35.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:6'),
                Text('USD 40.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),

          ),
          Divider(height: 10),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:7'),
                Text('USD 45.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:7'),
                Text('USD 45.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:8'),
                Text('USD 50.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10,),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:9'),
                Text('USD 55.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10,),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:10'),
                Text('USD 60.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10,),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:11'),
                Text('USD 65.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          Divider(height: 10,),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product no:12'),
                Text('USD 70.00'),
              ],
            ),
            trailing:ElevatedButton(onPressed: null, child: Text('Buy Now')),
          )

        ],
      ),

     );

  }
}