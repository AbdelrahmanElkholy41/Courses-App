import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';

class build_drawer extends StatelessWidget {
  const build_drawer({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            verticalSpace(65.h),
            Image.asset('assets/images/book.png',fit: BoxFit.cover,),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book_outlined),
              title: const Text('My Courses'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline),
              title: const Text('Favorites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('Help & Support'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}