// import 'package:bookly/core/utility/app_routes.dart';
// import 'package:bookly/core/utility/styles.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:iconly/iconly.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Bookly App",
            // style: Styles.appName,
            style: TextStyle(fontSize: 22),
          ),
          IconButton(
            onPressed: () {
              // GoRouter.of(context).push(AppRoutes.kSearchView);
            },
            icon: const Icon(Icons.search, color: Colors.white, size: 28),
          ),
        ],
      ),
    );
  }
}
