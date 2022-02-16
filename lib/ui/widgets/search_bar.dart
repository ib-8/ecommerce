import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(
          color: Colors.grey,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.search,
                color: Colors.grey[400],
              ),
            ),
            Flexible(
                child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                hintText: 'Search by Keyword or Product ID',
                hintStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[400]!,
                ),
              ),
            )),
            VerticalDivider(
              color: Colors.black.withOpacity(0.5),
              // thickness: 20,
            ),
            IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.mic_none,
                ),
                onPressed: () {}),
            IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.camera_alt_outlined),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
