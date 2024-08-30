import 'package:autismart/models/reviews.dart';

import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: models.length,
            itemBuilder: (context, ind) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width / 1.4,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    color: models[ind].color,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(60),
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(120))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              models[ind].imagePath,
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.height / 10,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Icon(Icons.star,
                            color: Colors.yellow,
                            size: MediaQuery.of(context).size.width / 15),
                        Icon(Icons.star,
                            color: Colors.yellow,
                            size: MediaQuery.of(context).size.width / 15),
                        Icon(Icons.star,
                            color: Colors.yellow,
                            size: MediaQuery.of(context).size.width / 15),
                        Icon(Icons.star,
                            color: Colors.yellow,
                            size: MediaQuery.of(context).size.width / 15),
                        Icon(Icons.star,
                            color: Colors.yellow,
                            size: MediaQuery.of(context).size.width / 15)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Text(
                        models[ind].reviewBody,
                        maxLines: 6,
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 12,
                        left: 16,
                      ),
                      child: Text(
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                          models[ind].userName),
                    )
                  ],
                ),
              );
            }));
  }
}
