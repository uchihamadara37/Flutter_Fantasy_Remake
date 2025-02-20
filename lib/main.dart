import 'package:final_fantasy_android/pages/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinalFantasyApp());
}

class FinalFantasyApp extends StatelessWidget {
  const FinalFantasyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Fantasy 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Remake Fantasy'),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.info),
      //       onPressed: () {
      //         showDialog(
      //           context: context,
      //           builder: (context) => AlertDialog(
      //             title: const Text('About'),
      //             content: const Text('Remake Fantasy - Flutter Edition'),
      //             actions: [
      //               TextButton(
      //                 onPressed: () => Navigator.pop(context),
      //                 child: const Text('OK'),
      //               ),
      //             ],
      //           ),
      //         );
      //       },
      //     ),
      //   ],
      // ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/sword-art-online.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlueAccent,
                      spreadRadius: 0.4,
                      blurRadius: 10.0,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 255, 255, 255), // Warna tombol
                    foregroundColor:
                        const Color.fromARGB(255, 1, 28, 44), // Warna teks
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 8), // Ukuran tombol
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    minimumSize: const Size(0, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // Sudut tombol
                    ),
                  ),
                  child: const Text('Start'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
