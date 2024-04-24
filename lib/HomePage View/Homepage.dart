import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:startacapp/HomePage%20View/ProductSection.dart';
import 'package:startacapp/utils/colors.dart';
import 'package:startacapp/utils/CustomButton.dart';
import 'package:startacapp/utils/CustomCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'assets/images/images1.png',
      'assets/images/img1.png',
    ];

    List<Map<String, String>> Category = [
      {
        'title': 'AC',
        'icon': 'assets/images/category/ac-48x48.png',
      },
      {
        'title': 'Drone',
        'icon': 'assets/images/category/drone-48x48.png',
      },
      {
        'title': 'Gimbal',
        'icon': 'assets/images/category/gimbal-48x48.png',
      },
      {
        'title': 'Laptop',
        'icon': 'assets/images/category/laptop-48x48.png',
      },
      {
        'title': 'Laptop Accessories',
        'icon': 'assets/images/category/laptop-acc-icon-48x48.png',
      },
      {
        'title': 'TV',
        'icon': 'assets/images/category/tv-48x48.png',
      },
      {
        'title': 'Mobile Phone',
        'icon': 'assets/images/category/mobile-phone-48x48.png',
      },
      {
        'title': 'Mobile Accessories',
        'icon': 'assets/images/category/mobile-phone-accessories-48x48.png',
      },
      {
        'title': 'Portable Power',
        'icon': 'assets/images/category/powerstation-48x48.png',
      },
      {
        'title': 'VR (Virtual Reality)',
        'icon': 'assets/images/category/vr-48x48.png',
      },
      {
        'title': 'Smart Watch',
        'icon': 'assets/images/category/smart-watch-48x48.png',
      },
      {
        'title': 'Action Camera',
        'icon': 'assets/images/category/action-camera-48x48.png',
      },
      {
        'title': 'Headphone',
        'icon': 'assets/images/category/headphone-48x48.png',
      },
      {
        'title': 'Earbuds',
        'icon': 'assets/images/category/earbuds-48x48.png',
      },
      {
        'title': 'Bluetooth Speakers',
        'icon': 'assets/images/category/bt-speaker-48x48.png',
      },
      {
        'title': 'Gaming Console',
        'icon': 'assets/images/category/gaming-console-48x48.png',
      },
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
              const SizedBox(height: 20,),
              const Text(
                'Featured Category',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),

              const Text(
                'Get Your Desired Product from Featured Category!',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20,),

              GridView.builder(
                primary: false,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: .8,
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
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            Category[index]['icon']!,
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            Category[index]['title']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: Category.length,
              ),
              const SizedBox(height: 20,),
              const ProductSections(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Appcolors.primaryColor,
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            label: 'Happy Hour',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.important_devices),
            label: 'PC Builder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Compare (0)',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: Appcolors.primaryColor,
        unselectedItemColor: Appcolors.primaryColor.withOpacity(.8),
        onTap: (int index) {
          // Handle navigation here
        },
      ),
    );
  }
}
