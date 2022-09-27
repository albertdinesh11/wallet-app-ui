import 'package:flutter/material.dart';
import 'package:walletappui/utils/my_card.dart';
import 'package:walletappui/utils/my_transaction.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          selectedItemColor: const Color.fromARGB(255, 80, 39, 176),
          unselectedItemColor: Colors.grey[500],
          iconSize: 28,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_bar_chart_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_rounded,
                  size: 50,
                  color: Color.fromARGB(255, 3, 2, 15),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: ""),
          ]),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child:
                        Center(child: Image.asset('lib/images/more_icon.png')),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('lib/images/profile.jpg')),
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'My Cards',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(144, 214, 214, 228),
                    ),
                    child: const Center(
                        child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Add a Card',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 250,
                    width: width * 0.70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        MyCard(
                            balance: 3456.30,
                            cardName: 'MasterCard',
                            cardNumber: 2345,
                            colorBg1: Colors.purpleAccent,
                            colorBg2: Colors.purple,
                            iconImagePath: 'lib/images/mastercard.png'),
                        MyCard(
                            balance: 10223.30,
                            cardName: 'Visa',
                            cardNumber: 3938,
                            colorBg1: Colors.blueAccent,
                            colorBg2: Colors.blue,
                            iconImagePath: 'lib/images/visa.png'),
                        MyCard(
                            balance: 12246.24,
                            cardName: 'MasterCard',
                            cardNumber: 5345,
                            colorBg1: Colors.redAccent,
                            colorBg2: Colors.orange,
                            iconImagePath: 'lib/images/mastercard.png'),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'Last Transactions',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                width: width * 1,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    MyTransaction(
                        transactionName: 'Sketch',
                        transactionType: 'Subsription',
                        rate: 99.23,
                        expireDate: 12,
                        expireMonth: 'December',
                        brandImg: 'lib/images/sketch.png'),
                    MyTransaction(
                        transactionName: 'Netflix',
                        transactionType: 'Subsription',
                        rate: 12.91,
                        expireDate: 24,
                        expireMonth: 'April',
                        brandImg: 'lib/images/netflix.png'),
                    MyTransaction(
                        transactionName: 'Mastercard',
                        transactionType: 'Subsription',
                        rate: 05.01,
                        expireDate: 08,
                        expireMonth: 'September',
                        brandImg: 'lib/images/mastercard.png'),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
