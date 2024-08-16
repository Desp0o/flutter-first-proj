import 'package:flutter/material.dart';

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
      print(_currentFilter);
    });
  }

  final List<String> _filters = [
    'All',
    'Popular',
    'Recommended',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
