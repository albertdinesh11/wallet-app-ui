// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final String cardName;
  final iconImagePath;
  final colorBg1;
  final colorBg2;

  const MyCard(
      {Key? key,
      required this.balance,
      required this.cardName,
      required this.cardNumber,
      required this.colorBg1,
      required this.colorBg2,
      required this.iconImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: 160,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topCenter,
              colors: [
                colorBg1,
                colorBg2,
              ],
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: 45,
                width: 45,
                child: Image.asset(iconImagePath),
              ),
              const SizedBox(height: 40),
              Text(
                '****$cardNumber',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const SizedBox(height: 30),
              Text(
                '\$$balance',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                cardName,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
