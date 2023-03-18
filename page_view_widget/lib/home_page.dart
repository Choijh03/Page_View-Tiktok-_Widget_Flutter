import 'package:flutter/material.dart';
import 'package:page_view_widget/posts/my_post1.dart';
import 'package:page_view_widget/posts/my_post2.dart';
import 'package:page_view_widget/posts/my_post3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //to track what page we are on
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        //default set is scrolling horizontal
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
