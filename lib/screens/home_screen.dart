import 'package:challenge_app_3/components/active_filters.dart';
import 'package:challenge_app_3/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    right: 130,
                    bottom: 1,
                    left: 25,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
