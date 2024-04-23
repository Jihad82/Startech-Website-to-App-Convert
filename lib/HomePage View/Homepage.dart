import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:startacapp/utils/colors.dart';
import 'package:startacapp/utils/CustomButton.dart';
import 'package:startacapp/utils/CustomCard.dart';
import 'package:startacapp/utils/CategoriesCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'assets/images/images1.png',
      'assets/images/img1.png',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.primaryColor,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: SizedBox(
          width: 100,
          height: 50,
          child: Image.asset('assets/images/logos.png'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CarouselSlider(
                items: imageList.map((String imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Appcolors.primaryColor,
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {
                    // Your onPageChanged callback function
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolors.secounderyColor,
                ),
                child: const Column(
                  children: [
                    Text(
                      'Compare Products',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Choose Two Products to Compare',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Search and Select Product',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Search and Select Product',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      title: 'View Comparison',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      title: 'Laptop Finder',
                      icon: Icons.laptop,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomCard(
                      title: 'Raise a Complain',
                      icon: Icons.contact_support,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      title: 'Online Support',
                      icon: Icons.support_agent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomCard(
                      title: 'Servicing Center',
                      icon: Icons.miscellaneous_services,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Featured Category',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'Get Your Desired Product from Featured Category!',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        GridView.count(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 3,
                          children: const [
                            CategoriesCard(
                              title: 'AC',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/ac-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Drone',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/drone-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Gimbal',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/gimbal-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Laptop',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/laptop-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Laptop Accessories',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/brand-logo/laptop-acc-icon-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'TV',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/tv-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Mobile Phone',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/mobile-phone-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Mobile Accessories',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/mobile-phone-accessories-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Portable Power Station',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/powerstation-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'VR (Virtual Reality)',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/vr-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Smart Watch',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/smart-watch-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Action Camera',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/action-camera-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Headphone',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/headphone-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Earbuds',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/earbuds-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Bluetooth Speakers',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/bt-speaker-48x48.png',
                            ),
                            CategoriesCard(
                              title: 'Gaming Console',
                              imageUrl: 'https://www.startech.com.bd/image/cache/catalog/category-thumb/gaming-console-48x48.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
