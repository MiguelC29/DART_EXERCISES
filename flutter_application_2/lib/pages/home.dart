import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey.shade100,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 50),
              child: Icon(
                Icons.wb_sunny_outlined,
                size: 120,
                color: Colors.black87,
              ),
            ),
            Expanded(
              child: Card(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(15),
                  children: [
                    Container(
                      height: 20,
                      margin: const EdgeInsets.only(top: 20, bottom: 27),
                      child: const Center(
                        child: Text('OUR APP',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 35,
                        ),
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