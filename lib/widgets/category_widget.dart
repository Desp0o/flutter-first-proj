import 'package:flutter/material.dart';
import 'package:tkt/widgets/card_widget.dart';

class CategorWidget extends StatefulWidget {
  const CategorWidget({super.key});

  @override
  State<CategorWidget> createState() => _CategorWidgetState();
}

class _CategorWidgetState extends State<CategorWidget> {
  String _currentFilter = 'All';

  void updateFilter(String filter) {
    setState(() {
      _currentFilter = filter;
    });
  }

  final List<String> _filters = [
    'All',
    'Popular',
    'Recommended',
  ];

  final List<Map<String, dynamic>> _destinations = [
    {
      'image': "assets/images/lake.png",
      'destName': "Ranu Kumbolo",
      'score': 4.9,
      'desc': "Lumajang, Jawa Timur"
    },
    {
      'image': "assets/images/crater.jpg",
      'destName': "Ijen Crater",
      'score': 5.0,
      'desc': "Banyuwangi, Jawa Timur"
    },
    {
      'image': "assets/images/beach.jpg",
      'destName': "Kuta Beach",
      'score': 4.7,
      'desc': "Bali, Indonesia"
    },
    {
      'image': "assets/images/mountain.jpg",
      'destName': "Mount Bromo",
      'score': 4.8,
      'desc': "East Java, Indonesia"
    },
    {
      'image': "assets/images/temple.jpg",
      'destName': "Borobudur Temple",
      'score': 4.9,
      'desc': "Magelang, Jawa Tengah"
    },
    {
      'image': "assets/images/canyon.jpg",
      'destName': "Raja Ampat",
      'score': 5.0,
      'desc': "West Papua, Indonesia"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: _filters
              .map((filter) => GestureDetector(
                    onTap: () => updateFilter(filter),
                    child: Row(
                      children: [
                        Text(
                          filter,
                          style: TextStyle(
                            color: _currentFilter == filter
                                ? Color(0xffF36D72)
                                : Color(0xff121212),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
        SizedBox(height: 26),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: _destinations
                .map((item) => GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        CardWidget(
                          destName: item['destName'],
                          image: item['image'],
                          score: item['score'],
                          desc: item['desc'],
                        ),
                        SizedBox(width: 18)
                      ],
                    )))
                .toList(),
          ),
        )
      ],
    );
  }
}
