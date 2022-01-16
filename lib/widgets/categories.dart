import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final dheight, dwidth;
  const Categories({Key? key, required this.dheight, required this.dwidth})
      : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List items = [
    {
      'name': 'Home & Applience',
    },
    {
      'name': 'Electronics',
    },
    {
      'name': 'Beauty & Fasion',
    },
    {
      'name': 'Mens Care',
    },
    {
      'name': 'Home & Applience',
    },
    {
      'name': 'Electronics',
    },
    {
      'name': 'Beauty & Fasion',
    },
    {
      'name': 'Mens Care',
    },
    {
      'name': 'Home & Applience',
    },
    {
      'name': 'Electronics',
    },
    {
      'name': 'Beauty & Fasion',
    },
    {
      'name': 'Mens Care',
    },
    {
      'name': 'Home & Applience',
    },
    {
      'name': 'Electronics',
    },
    {
      'name': 'Beauty & Fasion',
    },
    {
      'name': 'Mens Care',
    },
    {
      'name': 'Home & Applience',
    },
    {
      'name': 'Electronics',
    },
    {
      'name': 'Beauty & Fasion',
    },
    {
      'name': 'Mens Care',
    },
    {
      'name': 'Home & Applience',
    },
    {
      'name': 'Electronics',
    },
    {
      'name': 'Beauty & Fasion',
    },
    {
      'name': 'Mens Care',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          mainAxisExtent: widget.dheight * 0.18,
        ),
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white70),
            child: Stack(
              children: [
                InkWell(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      items[index]['name'],
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    print('object');
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
