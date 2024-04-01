import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: const Text(
          "RIPPLEX",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.messenger_sharp,color: Colors.white,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildImageContainer("assets/follow/fllow1.jpg"),
                  _buildImageContainer("assets/follow/follow2.jpg"),
                  _buildImageContainer("assets/follow/follow3.jpg"),
                  _buildImageContainer("assets/follow/follow4.jpg"),
                  _buildImageContainer("assets/follow/follow5.jpg"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            _buildImageContainerWithButtons("assets/posts/post1.jpg"),
            const SizedBox(height: 10),
            _buildImageContainerWithButtons("assets/posts/post2.jpg"),
          ],
        ),
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 140,
      width: 120,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 74, 20, 140),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Follow")),
        ],
      ),
    );
  }

  Widget _buildImageContainerWithButtons(String imagePath) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 320,
            width: double.infinity,
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message_outlined),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
