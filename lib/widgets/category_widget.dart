import 'package:flutter/material.dart';
import 'package:tkt/widgets/card_widget.dart';
import 'package:tkt/arrays/destination_lists.dart';

class CategorWidget extends StatefulWidget {
  const CategorWidget({super.key});

  @override
  State<CategorWidget> createState() => _CategorWidgetState();
}

class _CategorWidgetState extends State<CategorWidget> {
  String _currentFilter = 'Asia';
  List<Map<String, dynamic>> _choosenList = [];

  void updateFilter(String filter) {
    setState(() {
      _currentFilter = filter;
      switch (_currentFilter) {
        case 'Europe':
          _choosenList = europeDestinations;
          break;
        case 'Asia':
        default:
          _choosenList = destinations;
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _choosenList = destinations;
  }

  final List<String> _filters = [
    'Asia',
    'Europe',
    'Recommended',
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
                            fontFamily: 'Poppins',
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
            children: _choosenList
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
