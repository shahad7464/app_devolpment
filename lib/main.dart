import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
          centerTitle: true,
        ),
        body: ProductList(),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  int count;

  Product({required this.name,required this.price, this.count =0 });
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product(name: 'Iphone 14 Pro Max', price: 1099),
    Product(name: 'Iphone 15 Pro Maz', price: 1199),
    Product(name: 'MacBook', price: 1499),
    Product(name: 'MacBook Pro', price: 2099),
    Product(name: 'I Mac', price: 1699),
    Product(name: 'Samsung S20', price: 599),
    Product(name: 'Samsung S20 Ultra', price: 999),
    Product(name: 'Samsung S21', price: 699),
    Product(name: 'Samsung S21 Ultra', price: 899),
    Product(name: 'Samsung S22', price: 799),
    Product(name: 'Samsung S22 Ultra', price: 1099),

  ];

  void _incrementCount(int index) {
    setState(() {
      products[index].count++;
      if (products[index].count == 5) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Congratulations!'),
              content: Text('You have bought 5 ${products[index].name}'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
                trailing: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Count: ${products[index].count}'),
                      ElevatedButton(onPressed:(){
                        _incrementCount(index);
                      }, child: Text('Buy Now'))
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage(products)),
                    );
                  }, icon: Icon(Icons.shopping_cart),iconSize: 30,color: Colors.white,),
                ],
              ),
            )
          ],
        )

      ],
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> cartProducts;

  CartPage(this.cartProducts);

  int _totalItemCount() {
    int total = 0;
    for (var product in cartProducts) {
      total += product.count;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Items in Cart: ${_totalItemCount()}'),
          ],
        ),
      ),
    );
  }
}