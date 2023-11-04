import 'package:flutter/material.dart';

class DisplayDetails extends StatelessWidget {
  final photoIndex;
  DisplayDetails({
    super.key,
    required this.photoIndex
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Photo Details"),),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Image.network(photoIndex.url.toString()),
            const SizedBox(height: 10,),
            Text('Title : ${photoIndex.title}', style: const TextStyle(fontSize: 16),),
            Text('ID : ${photoIndex.id.toString()}',style: const TextStyle(fontSize: 16),)
          ],
        ),
      ),
    );
  }
}