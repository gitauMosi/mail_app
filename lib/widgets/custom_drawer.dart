import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Gmail",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.all_inbox_sharp),
              title: const Text(
                "All inboxes",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.all_inbox_sharp),
              title: const Text(
                "Primary",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Text("87"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.all_inbox_sharp),
              title: const Text(
                "Promotions",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people_alt_outlined),
              title: const Text(
                "Socials",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {},
              trailing: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text("8 new")),
            ),
            ListTile(
              leading: const Icon(Icons.error_outline_sharp),
              title: const Text(
                "Updates",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {},
              trailing: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text("6 new")),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("All labels"),
            ),
            ListTile(
              leading: const Icon(Icons.star_outline),
              title: const Text(
                "Starred",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Text("1"),
              onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.timer_outlined),
              title: const Text(
                "Snoozed",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.bookmark_outline_rounded),
              title: const Text(
                "Important",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.send),
              title: const Text(
                "Sent",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
             ListTile(
            leading: const Icon(Icons.send_and_archive_sharp),
            title: const Text(
              "Scheduled",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
           ListTile(
            leading: const Icon(Icons.outbox),
            title: const Text(
              "Outbox",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
           ListTile(
            leading: const Icon(Icons.drafts),
            title: const Text(
              "Drafts",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            trailing: Text("1"),
          ),
           ListTile(
            leading: const Icon(Icons.error),
            title: const Text(
              "All mail",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            trailing: Text("676"),
          ),
            ListTile(
            leading: const Icon(Icons.delete),
            title: const Text(
              "Trash",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Google apps"),
          ),
            ListTile(
            leading: const Icon(Icons.calendar_month_sharp),
            title: const Text(
              "Calender",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
            ListTile(
            leading: const Icon(Icons.person_pin),
            title: const Text(
              "Cantacts",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Divider(),
            ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
            ListTile(
            leading: const Icon(Icons.help),
            title: const Text(
              "Help & feedback",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          
          ],
        ),
      ),
    );
  }
}
