import 'package:coffee_roastery/components/accessories_card.dart';
import 'package:coffee_roastery/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/machine_card.dart';
import '../../components/products_card.dart';
import '../../home_page.dart';

class AllProductsPage extends StatefulWidget {
  @override
  _AllProductsPageState createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
      SizedBox(height: 50.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('assets/menu.png'), fit: BoxFit.cover),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('assets/search.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text(
          'ALL PRODUCTS',
          style: TextStyle(
              fontFamily: 'opensans',
              fontSize: 32.0,
              color: AppTheme.darkColor,
              fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 15.0),
      const ProductsCard(),
      SizedBox(height: 15.0),
      const ProductsCard(),
      SizedBox(height: 15.0),
      const ProductsCard(),
      SizedBox(height: 15.0),
      const ProductsCard(),
    ]));
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Arabica',
    'Culi',
    'Cherry',
    'Moka',
    'Robusta',
    'Espresso',
    'Cappuccino',
    'Macchiato',
    'Latte'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: ((context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: ((context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }));
  }
}