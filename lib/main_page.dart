import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sliver app bar'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text('item $index'),
            );
          }),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 25),
    );
  }
}
