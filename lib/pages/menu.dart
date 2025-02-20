import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<String> characters = [];

  final TextEditingController _controller = TextEditingController();

  void addItem() {
    String inputText = _controller.text.trim();
    if (inputText.isNotEmpty) {
      setState(() {
        characters.add(inputText);
        _controller.clear(); // Kosongkan textfield setelah input
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remake Fantasy'),
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () => {},
        // ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Add Your Char!'),
                  content: Container(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: 'Character Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        addItem();
                        print('Tombol ditekan!');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              12), // Ubah angkanya sesuai keinginan
                        ),
                      ),
                      child: Text('Add Char'),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Welcome to Flutter Edition. TextField ada di atas!"),
            SizedBox(
              height: 8,
            ),
            Text(
              "List character",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(characters[index]);
                    
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: characters.length),
            ),
          ],
        ),
      ),
    );
  }
}
