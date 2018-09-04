import 'package:flutter/material.dart';
import 'package:login/drawer.dart';

class Home extends StatefulWidget {
  static String tag = 'home-page';

  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final _scrollController = ScrollController();
  double offset = 0.0;
  void scrollListener(){
     setState(() {

       offset = _scrollController.offset;
     });
  }
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(scrollListener);
  }
  @override
  Widget build(BuildContext context) {
    double setOp = 1.0 - (offset * 0.01);
    return Scaffold(
//      appBar: AppBar(
//        title: Text('beats',
//          style: TextStyle(
//            fontFamily: 'ABEAKRG',
//            fontSize: 25.0
//          ),
//        ),
//        elevation: 0.0,
//        backgroundColor: Theme.of(context).primaryColor,
//      ),
//      drawer: DrawerPage(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            bottom: PreferredSize(
                child: Opacity(
                  opacity: setOp < 0 ? 0.0 : setOp > 1.0 ? 1.0 : setOp,
                  child: Container(
                    height: 100.0,
                    color: Colors.blue,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("This is amazing")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(100.0)),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5.0, mainAxisSpacing: 5.0),
            delegate: SliverChildBuilderDelegate((context, index) {
              Size size = MediaQuery.of(context).size;
              return Container(
                color: Colors.grey,
                child: Text("$index"),
              );
            }, childCount: 50),
          )
        ],
      ),
    );
  }
}
