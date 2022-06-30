import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 5,
            child: Column(children: [
              Container(
                height: 52,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/titles_bg_uts.png'),
                      fit: BoxFit.fill),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/ir_uts.png'),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        const Text('UTS',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const Text('IR Unreserved Ticketing',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    ),
                    const Spacer(),
                    Image.asset('assets/login_btn_uts.png'),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert,
                          color: Colors.black, size: 20),
                    ),
                  ],
                ),
              ),
              const TabBar(tabs: [
                Tab(
                  child: Text('Normal Booking'),
                ),
                Tab(
                  child: Text('Quick Booking'),
                ),
                Tab(
                  child: Text('Platform Booking'),
                ),
                Tab(
                  child: Text('Season Booking'),
                ),
                Tab(
                  child: Text('QR Booking'),
                ),
              ]),
            ])));
  }
}
