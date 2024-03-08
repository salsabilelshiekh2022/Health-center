import 'package:flutter/material.dart';

import 'select_time_item.dart';

List<String> times = [
  "3:00",
  "4:00",
  "5:00",
  "6:00",
  "7:00",
  "8:00",
  "9:00",
  "10:00",
  "11:00",
  "12:00",
];

class SelectTimeList extends StatefulWidget {
  const SelectTimeList({super.key});

  @override
  State<SelectTimeList> createState() => _SelectTimeListState();
}

class _SelectTimeListState extends State<SelectTimeList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: times.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: SelectTimeItem(
                    isSelected: currentIndex == index,
                    date: times[index],
                  )),
            );
          }),
    );
  }
}
