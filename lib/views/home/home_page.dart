import 'package:flutter/material.dart';
import 'package:mail_app/constants/color.dart';
import 'package:mail_app/widgets/custom_drawer.dart';
import 'package:mail_app/widgets/mail_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: // Text field wrapped in Expanded
            const TextField(
          decoration: InputDecoration(
            hintText: "Search in mail",
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: const Text(
              "M",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Primary",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const MailList();
                    })
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.secondaryDark,
        onPressed: () {},
        tooltip: "Compose",
        child: const Icon(Icons.edit_outlined),
      ),
    );
  }
}
