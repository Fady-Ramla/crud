import 'package:crud_app/get_all.dart';
import 'package:crud_app/screen_pages.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            width: 200,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GetAllPage()));
              },
              style: TextButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text(
                "get all posts",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 200,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddPostPage()),
                );
              },
              style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 55, 176, 39)),
              child: const Text(
                "add post",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ]),
      ),
    ));
  }
}
