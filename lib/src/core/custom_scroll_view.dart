// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

class ExCustomScrollView extends StatelessWidget {
  const ExCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false, // close defaut return icon
          expandedHeight: 280,
          pinned: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back),
              Stack(
                children: [
                  const Icon(Icons.shopping_cart_outlined),
                ],
              ),
            ],
          ),
          toolbarHeight: 80,
          bottom: PreferredSize(
            preferredSize: Size(double.maxFinite, 20),
            child: Container(
              color: Colors.white,
              child: Text(
                "Sliver AppBar bottom",
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          backgroundColor: Colors.amber,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("assets/image/food0.png",
                width: double.maxFinite, fit: BoxFit.cover),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: List.generate(
              10,
              (index) => Container(
                height: 300,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                    color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                        .withOpacity(1.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
