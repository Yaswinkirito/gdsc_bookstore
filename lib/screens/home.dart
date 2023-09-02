import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff131212),
      bottomNavigationBar: Container(
          child: Row(
        children: [
          SizedBox(
            width: size.width / 4,
            height: 57,
            child: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.width / 4,
            height: 57,
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.width / 4,
            height: 57,
            child: const Icon(
              Icons.library_books,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.width / 4,
            height: 57,
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      )),
      body: Container(
        height: size.height - 100,
        padding: const EdgeInsets.only(bottom: 50),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(48),
            bottomRight: Radius.circular(48),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    const Text(
                      "20",
                      style: TextStyle(
                        color: Color(0xff101011),
                        fontSize: 38,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Thur",
                          style: TextStyle(
                            color: Color(0xff9B9CA6),
                            fontSize: 14,
                          ),
                        ),
                        const Text(
                          "Feb 2020",
                          style: TextStyle(
                            color: Color(0xff9B9CA6),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.dashboard),
                    Container(
                      height: 70,
                      width: 47,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 31),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 19,
                ),
                child: Row(
                  children: [
                    const Text(
                      "New Arrivals",
                      style: TextStyle(
                        color: Color(0xff0F0F10),
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(246, 193, 45, 1)),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 24,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                  width: size.width,
                  height: 280,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 12),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(12),
                          child: SizedBox(
                            height: 257,
                            width: 130,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 197,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff211B1B),
                                        borderRadius: BorderRadius.circular(6),
                                      )),
                                  const Text(
                                    "How",
                                    style: TextStyle(
                                      color: Color(0xff0F0F10),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Text(
                                    "Hello",
                                    style: TextStyle(
                                      color: Color(0xff9D9EA8),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ]),
                          ),
                        );
                      })),
              const SizedBox(
                height: 28,
              ),
              Container(
                width: size.width,
                height: size.height / 2,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff131212).withOpacity(0.3),
                        blurRadius: 30,
                        offset: const Offset(0, -4),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 4,
                        decoration: BoxDecoration(
                          color: const Color(0xffDCDCDF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 12,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "My books",
                                  style: TextStyle(
                                    color: Color(0xff0F0F10),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    height: 197,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff211B1B),
                                      borderRadius: BorderRadius.circular(6),
                                    )),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
