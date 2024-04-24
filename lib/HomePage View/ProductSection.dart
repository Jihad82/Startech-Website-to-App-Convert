import 'package:flutter/material.dart';

class ProductSections extends StatelessWidget {
  const ProductSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> product = [
      {
        'name': 'Intel Core i3-12100" 12th Gen Budget Desktop PC',
        'image': 'assets/images/product/core-i3-12100-12th-gen-desktop-pc-200x200.webp',
        'price': '25,000',
        'oldPrice': '30,000',
        'discount': 'Save: 5,000',
      },
      {
        'name': 'AMD Ryzen 5 5600G" Budget Gaming Desktop PC',
        'image': 'assets/images/product/amd-ryzen-5-5600g-gaming-desktop-pc-003-200x200.jpeg',
        'price': '29,300',
        'oldPrice': '',
        'discount': 'Earn Point: 220',
      },
      {
        "name": "MSI PRO H610M-E DDR4 mATX Motherboard",
        "image": "assets/images/product/pro-h610m-e-ddr4-01-200x200.webp",
        "price": "9,999",
        "oldPrice": "10,700",
        "discount": "Save: 701"
      },
      {
        "name": "MSI PRO MP223 21.45 Full HD Business Monitor",
        "image": "assets/images/product/mp223-06-200x200.webp",
        "price": "9,900",
        "oldPrice": "",
        "discount": "Earn Point: 150"
      },
      {
        'name': 'AMD Ryzen 5 5600G pro Budget Gaming Desktop PC',
        'image': 'assets/images/product/amd-ryzen-5-5600g-gaming-desktop-pc-003-200x200.jpeg',
        'price': '36,300',
        'oldPrice': '',
        'discount': 'Earn Point: 220',
      },
      {
        "name": "MSI MAX H610M-E DDR4 mATX Motherboard",
        "image": "assets/images/product/pro-h610m-e-ddr4-01-200x200.webp",
        "price": "19,999",
        "oldPrice": "10,700",
        "discount": "Save: 701"
      },
      // Add your product data here
    ];

    return SizedBox(
      height: 600, // Adjust the height according to your needs
      child: Column(
        children: [
          const Text(
            'Featured Products',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Check & Get Your Desired Product!',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),

          Expanded(
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: .6,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black.withOpacity(.1),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        product[index]['image'],
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        product[index]['name'],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Price: ${product[index]['price']}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      if (product[index]['oldPrice'].isNotEmpty)
                        Text(
                          'Old Price: ${product[index]['oldPrice']}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      if (product[index]['discount'].isNotEmpty)
                        Text(
                          product[index]['discount'],
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                          ),
                        ),
                    ],
                  ),
                );
              },
              itemCount: product.length,
            ),
          ),
        ],
      ),
    );
  }
}
