import 'package:challenge_app_3/components/active_filters.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<String> _icon = [
    // 'assets/tesla.svg',
    'assets/audi.png',
    'assets/audi.png',
    'assets/mit.png'
  ];

  final List<String> _brand = ['Tesla', 'Audi', 'Mitsubishi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171c22),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cancel),
          ),
        ],
        title: Text(
          'Filters',
          style: GoogleFonts.roboto(
            fontSize: 22,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    'Active filters',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF40464E),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ActiveFilters(
                    text: "\$0.3-0.67",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ActiveFilters(
                    text: "Tesla",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ActiveFilters(
                    text: "Reset All",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26),
                  topRight: Radius.circular(26),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      3,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(8),
                              // height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                color: _currentIndex == index
                                    ? const Color(0xffc5cad4)
                                    : const Color(0xfff9f9f9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(_icon[index]),
                                    Text(
                                      _brand[index],
                                      style: const TextStyle(
                                          color: Color(
                                            0xff272729,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
