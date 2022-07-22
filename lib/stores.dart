import 'package:flutter/material.dart';
import 'package:q_express/store1.dart';
import 'package:q_express/store2.dart';
import 'cart.dart';
import 'dish_object.dart';
import 'main.dart';

class Stores extends StatefulWidget {
  String location;
  Stores({Key? mykey, required this.location}) : super(key: mykey);
  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  List<Dish> _dishes = <Dish>[];
  List<Dish> _cartList = <Dish>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location: ${widget.location}'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.zero),
            ElevatedButton(
              child: const Text('Go to Shop1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Store1()),
                );
              },
            ),
            Card(
              child: Icon(
                Icons.fastfood,
                size: 200,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Go to Shop2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Store2()),
                );
              },
            ),
            Card(
              child: Icon(
                Icons.print,
                size: 200,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // ListView _buildListView() {
  //   return ListView.builder(
  //     itemCount: _dishes.length,
  //     itemBuilder: (context, index) {
  //       var item = _dishes[index];
  //       return Padding(
  //         padding: const EdgeInsets.symmetric(
  //           horizontal: 8.0,
  //           vertical: 2.0,
  //         ),
  //         child: Card(
  //           elevation: 4.0,
  //           child: ListTile(
  //             leading: Icon(
  //               item.icon,
  //               color: item.color,
  //             ),
  //             title: Text(item.name),
  //             trailing: GestureDetector(
  //               child: (!_cartList.contains(item))
  //                   ? Icon(
  //                       Icons.add_circle,
  //                       color: Colors.green,
  //                     )
  //                   : Icon(
  //                       Icons.remove_circle,
  //                       color: Colors.red,
  //                     ),
  //               onTap: () {
  //                 setState(() {
  //                   if (!_cartList.contains(item))
  //                     _cartList.add(item);
  //                   else
  //                     _cartList.remove(item);
  //                 });
  //               },
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  // GridView _buildGridView() {
  //   return GridView.builder(
  //       padding: const EdgeInsets.all(4.0),
  //       gridDelegate:
  //           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  //       itemCount: 2,
  //       itemBuilder: (context, index) {
  //         var item = _dishes[index];
  //         return Card(
  //             elevation: 4.0,
  //             child: Stack(
  //               fit: StackFit.loose,
  //               alignment: Alignment.center,
  //               children: <Widget>[
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: <Widget>[Icon(
  //                         item.icon,
  //                         color: item.color,
  //                         size: 100.0,
  //                       ),
  //                     Text(
  //                       item.name,
  //                       textAlign: TextAlign.center,
  //                       style: Theme.of(context).textTheme.subtitle1,
  //                     )
  //                   ],
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.only(
  //                     right: 8.0,
  //                     bottom: 8.0,
  //                   ),
  //                   child: Align(
  //                     alignment: Alignment.bottomRight,
  //                     child: GestureDetector(
  //                       child: (!_cartList.contains(item))
  //                           ? Icon(
  //                               Icons.add_circle,
  //                               color: Colors.green,
  //                             )
  //                           : Icon(
  //                               Icons.remove_circle,
  //                               color: Colors.red,
  //                             ),
  //                       onTap: () {
  //                         setState(() {
  //                           if (!_cartList.contains(item))
  //                             _cartList.add(item);
  //                           else
  //                             _cartList.remove(item);
  //                         });
  //                       },
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ));
  //       });
  // }

  // void _populateDishes() {
  //   var list = <Dish>[
  //     Dish(
  //       name: 'Suhani Restaurant',
  //       icon: Icons.fastfood,
  //       color: Colors.amber,
  //     ),
  //     Dish(
  //       name: 'Pista House',
  //       icon: Icons.print,
  //       color: Colors.deepOrange,
  //     ),
  //     Dish(
  //       name: 'Rice',
  //       icon: Icons.child_care,
  //       color: Colors.brown,
  //     ),
  //     Dish(
  //       name: 'Beef burger without beef',
  //       icon: Icons.whatshot,
  //       color: Colors.green,
  //     ),
  //     Dish(
  //       name: 'Laptop without OS',
  //       icon: Icons.laptop,
  //       color: Colors.purple,
  //     ),
  //     Dish(
  //       name: 'Mac wihout macOS',
  //       icon: Icons.laptop_mac,
  //       color: Colors.blueGrey,
  //     ),
  //   ];

  //   setState(() {
  //     _dishes = list;
  //   });
  // }
}
