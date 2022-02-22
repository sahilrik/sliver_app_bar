import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: false,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('sliver app bar'),
              background: Image.network(
                'https://images.unsplash.com/photo-1641115948629-6ff88111fbeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        body: ListView.separated(
            padding: const EdgeInsets.all(8.0),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('item $index'),
              );
            },
            separatorBuilder: (context, int index) => const Divider(),
            itemCount: 30),
      ),
    );
  }
}
