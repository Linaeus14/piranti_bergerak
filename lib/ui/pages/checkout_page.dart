import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF393E46),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 330,
                  child: Image.asset(
                    'assets/header.png',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,

                  // Tombol Back
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Color(0xFFFFDF00),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      iconSize: 40,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF393E46),
                          Color(0xFF393E46),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),

            // Kontainer "movie detail"
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              padding: const EdgeInsets.all(10),
              color: const Color(0xFF393E46),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'STAR WARS : THE FORCE AWAKENS',
                    style: TextStyle(
                      color: Color(0xFFFFDF00),
                      fontFamily: 'Raleway',
                      fontSize: 16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: Text(
                        'Action, Adventure, Sci-Fi - English',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    color: const Color(0xFFFFDF00),
                    height: 1,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cinema',
                            style: TextStyle(
                              color: Color(0xFFFFDF00),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Date & Time',
                            style: TextStyle(
                              color: Color(0xFFFFDF00),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Seat(s)',
                            style: TextStyle(
                              color: Color(0xFFFFDF00),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Lorem',
                            style: TextStyle(
                              color: Color(0xFFFFDF00),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Day 30, 22:00',
                            style: TextStyle(
                              color: Color(0xFFFFDF00),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'A1, A2, A3',
                            style: TextStyle(
                              color: Color(0xFFFFDF00),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    color: const Color(0xFFFFDF00),
                    height: 1,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                color: Color(0xFFFFDF00),
                                fontFamily: 'Raleway',
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              '3x200,000',
                              style: TextStyle(
                                color: Color(0xFFFFDF00),
                                fontFamily: 'Raleway',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Rp. 600,000',
                              style: TextStyle(
                                color: Color(0xFFFFDF00),
                                fontFamily: 'Raleway',
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),

            // Kontainer "user wallet"
            Container(
              decoration:
                  const BoxDecoration(color: Color(0xFF393E46), boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  offset: Offset(0, -1),
                )
              ]),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color(0xFFFFDF00), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.yellow,
                                      width: 2,
                                    ),
                                  ),
                                  child: ClipOval(
                                    child: Image.asset('assets/profile.jpg'),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My Wallet',
                                    style: TextStyle(
                                      color: Color(0xFFFFDF00),
                                      fontFamily: 'Raleway',
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    'Rp. 1,400,000',
                                    style: TextStyle(
                                      color: Color(0xFFFFDF00),
                                      fontFamily: 'Roboto',
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ClipOval(
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xFF393E46),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Tombol "Confirm Order"
                  Container(
                    margin: const EdgeInsets.fromLTRB(45, 20, 45, 40),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF393E46), // Warna abu-abu
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Color(0xFFFFDF00),
                            width: 2,
                          ),
                        ),
                      ),
                      child: Container(
                        width: 270,
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: const Text(
                          'Confirm Order',
                          style: TextStyle(
                            color: Color(0xFFFFDF00),
                            fontFamily: 'Raleway',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
