import 'package:flutter/material.dart';

import 'book_date_item.dart';

class BookDateList extends StatefulWidget {
  const BookDateList({super.key});

  @override
  State<BookDateList> createState() => _BookDateListState();
}

class _BookDateListState extends State<BookDateList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: BookDateItem(
                    isSelected: currentIndex == index,
                    date: dates[index],
                  )),
            );
          }),
    );
  }
}

List<String> dates = [
  "8\n MAR",
  "9\n MAR",
  "10\n MAR",
  "11\n MAR",
  "12\n MAR",
  "13\n MAR",
  "14\n MAR",
  "15\n MAR",
  "16\n MAR",
  "17\n MAR",
];
