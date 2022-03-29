import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Column(children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.lime,
              ),
              child: Center(
                child: Text(
                  'Ola Mundo!',
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text('Container1'),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text('Container 2'),
                  ),
                )
              ],
            )
          ]),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) => _pageController.jumpToPage(index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new_outlined), label: 'Item 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new_outlined), label: 'Item 2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new_outlined), label: 'Item Teste')
        ],
      ),
    );
  }
}
