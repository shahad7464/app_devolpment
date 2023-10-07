import 'package:flutter/material.dart';

class ShopCartScreen extends StatefulWidget {
  const ShopCartScreen({super.key});

  @override
  State<ShopCartScreen> createState() => _ShopCartScreenState();
}

class _ShopCartScreenState extends State<ShopCartScreen> {
  int indexOfFirstProduct = 1;
  int indexOfSecondProduct = 1;
  int indexOfThirdProduct = 1;
  int priceOfFirstProduct = 120;
  int priceOfSecondProduct = 170;
  int priceOfThirdProduct = 190;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: 900,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('My Bag',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 112,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.weezyshoes.com/wp-content/uploads/2023/05/Air-Force-82-Double-Swoosh-W-Blue-Original-Quality-11-04-23-Final-2-1.webp',),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Air Force 8 Swoosh',
                                      style: TextStyle(
                                        fontSize: 18,fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Color: ',
                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w100,),
                                        ),
                                        Text(
                                          'White',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          ' Size: ',
                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w100,),
                                        ),
                                        Text(
                                          '40-45',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert,color: Colors.grey,),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      indexOfFirstProduct++;
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    indexOfFirstProduct.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (indexOfFirstProduct == 1) {
                                        return;
                                      } else {
                                        indexOfFirstProduct--;
                                      }
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 85,
                                  ),
                                  Text(
                                    (priceOfFirstProduct * indexOfFirstProduct)
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8,),
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 112,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://media.architecturaldigest.com/photos/57a11cbeb6c434ab487bc26b/1:1/w_774,h_774,c_limit/nikes-senior-designer-explains-what-went-into-new-air-jordan-01.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'New Air Jordan XXXI',
                                      style: TextStyle(
                                        fontSize: 18,fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Color: ',
                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w100,),
                                        ),
                                        Text(
                                          'Black & Red',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          ' Size: ',
                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w100,),
                                        ),
                                        Text(
                                          '42-44',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert,color: Colors.grey,),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      indexOfSecondProduct++;
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    indexOfSecondProduct.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (indexOfSecondProduct == 1) {
                                        return;
                                      } else {
                                        indexOfSecondProduct--;
                                      }
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 85,
                                  ),
                                  Text(
                                    (priceOfSecondProduct *
                                        indexOfSecondProduct)
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8,),
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 112,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images-wp.stockx.com/news/wp-content/uploads/2021/10/blog-hero-twitter-square-1200x1200.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Air Jordan GS',
                                      style: TextStyle(
                                        fontSize: 18,fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Color: ',
                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w100,),
                                        ),
                                        Text(
                                          'Yellow',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          ' Size: ',
                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w100,),
                                        ),
                                        Text(
                                          '38-45',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert,color: Colors.grey,),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      indexOfThirdProduct++;
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    indexOfThirdProduct.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (indexOfThirdProduct == 1) {
                                        return;
                                      } else {
                                        indexOfThirdProduct--;
                                      }
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 85,
                                  ),
                                  Text(
                                    (priceOfThirdProduct * indexOfThirdProduct)
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Total Amount:',
                    style: TextStyle(fontSize: 16,color: Colors.grey,),
                  ),
                  const Spacer(),
                  Text(
                    ((priceOfFirstProduct * indexOfFirstProduct) +
                        (priceOfSecondProduct * indexOfSecondProduct) +
                        (priceOfThirdProduct * indexOfThirdProduct))
                        .toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const Text(
                    ' \$',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Congratulations!!!'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  child: const Text('CHECK OUT'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}