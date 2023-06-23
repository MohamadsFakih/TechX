import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/home_main.jpg"), fit: BoxFit.cover),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Our New Products",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text(
                                "VIEW MORE",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 16,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
