import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
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
                size: 100,
                color: Colors.black87,
              ),
            ),
            // Expanded(
              //child: 
            Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              color: Colors.green.shade200,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15),
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 20, bottom: 27),
                    child: const Center(
                      child: Text('OUR APP',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                      ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.yellow.shade300,
                          Colors.cyan.shade300,
                        ]
                      )
                    ),
                  ),
                  OutlinedButton(onPressed: (){}, 
                    child: const Text('Botón'),
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: Colors.pink,
                      // backgroundColor: Color.fromARGB(255, 10, 11, 19),
                      backgroundColor: Colors.orange.shade400,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      side: const BorderSide( width: 2, color: Colors.black38),
                    ),
                  ),
                  OutlinedButton(onPressed: (){},
                    child: const Text('Botón'),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red.shade400,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      side: const BorderSide( width: 2, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}