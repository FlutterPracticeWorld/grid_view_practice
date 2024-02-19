import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home')
      ),
      body: DraggableScrollableSheet(
        expand: true,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.blue[100],
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index){
                return ListTile(title: Text('Item $index'));
              },
            )
          );
        },
      )
    );
  }
}
