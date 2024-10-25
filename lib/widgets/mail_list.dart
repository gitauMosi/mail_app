import 'package:flutter/material.dart';

class MailList extends StatelessWidget {
  const MailList({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: Text(
          "T",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),

      ),
      title: Text("Title", style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("subject",  style: TextStyle(fontWeight: FontWeight.w500),),
          Text('body')
        ],
        
      ),
      trailing: Column(
        children: [
          Text("Oct 22"),
          Spacer(),
          Icon(Icons.star_outline)
        ],
      ),
    );
  }
}
