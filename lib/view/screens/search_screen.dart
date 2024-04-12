import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ripplex/controller/search_provider.dart';
import 'package:ripplex/helper/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBlackColor,
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Consumer<SearchProvider>(
              builder: (context, provider, child) {
                return TextField(
                  controller: provider.textEditingController,
                  style: const TextStyle(color: cWhiteColor),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: cGreyColor900,
                    filled: true,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: cGreyColor500,
                      fontSize: 18,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      color: cWhiteColor70,
                      size: 18,
                    ),
                    suffixIcon: provider.showClearButton
                        ? IconButton(
                            icon: const Icon(
                              CupertinoIcons.clear,
                              color: cWhiteColor70,
                              size: 18,
                            ),
                            onPressed: () {
                              provider.textEditingController.clear();
                            },
                          )
                        : null,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/search/carzzz.jpg'),
                  ),
                  title: Text("shazin", style: TextStyle(color: cGreyColor)),
                  subtitle: Text("Shazin Muhammed"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
