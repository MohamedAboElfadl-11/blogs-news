import 'package:flutter/material.dart';

import '../widgets/custome_carsoul_indecator.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList =[
      'https://media.wired.com/photos/6504a8fce395b9ac399aef03/master/w_1600,c_limit/UAW-Strike-Will-Strain-Supply-Chain-Business-1667161825.jpg',
      'https://media.wired.com/photos/650382e76af12c1894a86625/16:9/pass/Upside%2520Foods-Final-Artwork_Mark%2520Harris.jpg',
      'https://media.wired.com/photos/65024d2e139c7729ea586427/master/w_1600,c_limit/Tesla-Dojo-Supercomputer-Fast-Forward-Business-1297137507.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Blogs ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              "News",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    "Breaking News",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              CustomCarouselSlider(imgList:imgList,),
            ],
          ),
        ),
      ),
    );
  }
}
