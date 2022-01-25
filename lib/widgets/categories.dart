import 'package:animations/animations.dart';
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
      'img':
          'https://image.shutterstock.com/shutterstock/photos/1357132106/display_1500/stock-photo-concept-of-product-categories-furniture-and-decor-fly-out-of-the-box-d-render-on-grey-1357132106.jpg'
    },
    {
      'name': 'Electronics',
      'img':
          'https://image.shutterstock.com/shutterstock/photos/1345252031/display_1500/stock-photo-concept-of-product-categories-small-consumer-electronics-fly-out-of-the-box-d-render-on-white-1345252031.jpg'
    },
    {
      'name': 'Beauty & Fasion',
      'img':
          'https://image.shutterstock.com/shutterstock/photos/1352034062/display_1500/stock-photo-concept-of-product-categories-small-household-appliances-in-the-box-d-render-on-white-background-1352034062.jpg'
    },
    {
      'name': 'Mens Ware',
      'img':
          'https://image.shutterstock.com/shutterstock/photos/1357132130/display_1500/stock-photo-concept-of-product-categories-clothing-and-accessories-fly-out-of-the-box-d-render-on-white-no-1357132130.jpg'
    },
    {
      'name': 'Sports',
      'img':
          'https://image.shutterstock.com/shutterstock/photos/1393227662/display_1500/stock-photo-concept-of-product-categories-sports-wear-and-equipment-fly-out-of-the-box-d-render-on-white-1393227662.jpg'
    },
    {
      'name': 'Computer & Accessories',
      'img':
          'https://image.shutterstock.com/shutterstock/photos/1357132121/display_1500/stock-photo-concept-of-product-categories-computers-and-accessories-fly-out-of-the-box-d-render-on-white-no-1357132121.jpg'
    },
    {
      'name': 'Foods',
      'img':
          'https://image.shutterstock.com/shutterstock/photos/1379690489/display_1500/stock-photo-concept-of-product-categories-food-fly-out-of-the-box-d-render-on-blue-gradient-background-1379690489.jpg'
    },
    {
      'name': 'Kids',
      'img':
          'https://image.shutterstock.com/shutterstock/photos/1357132088/display_1500/stock-photo-concept-of-product-categories-toys-fly-out-of-the-box-d-render-on-grey-gradient-1357132088.jpg'
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
          mainAxisExtent: widget.dheight * 0.13,
        ),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return OpenContainer(
            openColor: Colors.pink,
            openShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))),
            closedColor: Colors.red,
            transitionDuration: const Duration(milliseconds: 800),
            transitionType: ContainerTransitionType.fadeThrough,
            closedBuilder: (context, action) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: 0.8,
                          child: Image.network(
                            items[index]['img'],
                            fit: BoxFit.cover,
                            scale: 0.1,
                            loadingBuilder: (context, child, loadingProgress) {
                              return loadingProgress == null
                                  ? child
                                  : const CircularProgressIndicator();
                            },
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        items[index]['name'],
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              );
            },
            openBuilder: (context, action) {
              return SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            items[index]['img'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back)),
                        ),
                      ],
                    ),
                    Text(items[index]['name']),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
