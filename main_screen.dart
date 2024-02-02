import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderWidget(),
            SizedBox(height: 20),
            BoxWidget(
              label: 'Box 1',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoxDetailPage(boxNumber: 1),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            BoxWidget(
              label: 'Box 2',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoxDetailPage(boxNumber: 2),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            BoxWidget(
              label: 'Box 3',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoxDetailPage(boxNumber: 3),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            BoxWidget(
              label: 'Box 4',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoxDetailPage(boxNumber: 4),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            BoxWidget(
              label: 'Box 5',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoxDetailPage(boxNumber: 5),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            BoxWidget(
              label: 'Box 6',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoxDetailPage(boxNumber: 6),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Center(
        child: Text(
          'Slider Widget',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final String label;
  final Function onTap;

  BoxWidget({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: double.infinity,
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class BoxDetailPage extends StatelessWidget {
  final int boxNumber;

  BoxDetailPage({required this.boxNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box $boxNumber Detail'),
      ),
      body: Center(
        child: Text(
          'This is Box $boxNumber Detail Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
