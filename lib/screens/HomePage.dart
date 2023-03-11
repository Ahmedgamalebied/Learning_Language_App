import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toku_app/components/home_widget.dart';
import 'package:toku_app/screens/NumberPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF343541),
        title: const Text('Language Learing'),
      ),
      body: Container(
        height: 500,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: MyWidget(
                text: 'Numbers',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const NumbersPage();
                  }));
                },
              ),
            ),
            Expanded(child: MyWidget(text: ' Family Members')),
            Expanded(child: MyWidget(text: 'Colors')),
            Expanded(child: MyWidget(text: 'Phrases')),
          ],
        ),
      ),
    );
  }
}
