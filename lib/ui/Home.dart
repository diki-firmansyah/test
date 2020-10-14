import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tradaru_test/model/produk.dart';
import 'package:tradaru_test/ui/detail_product.dart';

class Home extends StatefulWidget {
  final Produk produk;
  Home({this.produk});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  void onTappedBar(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: MyCustomAppBar(
        height: MediaQuery.of(context).size.height / 10,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      //color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: Text(
                                'Our Product',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple[900],
                                  //fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                          //SizedBox(width: 50),
                          FlatButton(
                            onPressed: () {},
                            //color: Theme.of(context).accentColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Short By',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.deepPurple[900],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.deepPurple[900],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 23,
                            ),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/nike_hitam.png',
                                  width:
                                      MediaQuery.of(context).size.height / 18,
                                ),
                              ),
                              new SizedBox(
                                width: MediaQuery.of(context).size.width / 60,
                              ),
                              Text(
                                'Sneakers',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 23,
                            ),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/jam_tangan.png',
                                  width:
                                      MediaQuery.of(context).size.height / 40,
                                ),
                              ),
                              new SizedBox(
                                width: MediaQuery.of(context).size.width / 60,
                              ),
                              Text(
                                'Watch',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 23,
                            ),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/backpack.png',
                                  width:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                              ),
                              new SizedBox(
                                width: MediaQuery.of(context).size.width / 60,
                              ),
                              Text(
                                'Backpack',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  new SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Center(
                    child: Container(
                      color: Colors.grey[200],
                      width: MediaQuery.of(context).size.width / 1,
                      height: MediaQuery.of(context).size.height / 1.4,
                      child: GridView.builder(
                        //scrollDirection: Axis.horizontal,
                        itemCount: produk.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 1.2),
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          Produk produks = produk[index];
                          //return Text(someplace[index].name);
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                )
                              ],
                            ),
                            //color: Colors.red,
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        //color: Colors.red,
                                        alignment: Alignment.center,
                                        //width:MediaQuery.of(context).size.height / 5.5,
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),

                                            color: Colors.blueAccent,
                                            //boxShadow: [
                                            //  BoxShadow(
                                            //    color: Colors.white,
                                            //    offset: Offset(0.0, 0.0),
                                            //    blurRadius: 0.0,
                                            //  )
                                            //],
                                          ),
                                          child: Text(
                                            produks.information,
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  35,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.favorite,
                                          size: 20,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => DetailProduct(
                                        produk: produks,
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          MediaQuery.of(context).size.height /
                                              10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.pink[100],
                                          offset: Offset(0.0, 2.0),
                                          blurRadius: 6.0,
                                        )
                                      ],
                                    ),
                                    child: ClipRRect(
                                      child: Image(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                5.5,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                5.5,
                                        image: AssetImage(produks.imageUrl),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50,
                                ),
                                Container(
                                  //color: Colors.red,
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.height / 5.5,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        produks.name,
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              25,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50,
                                ),
                                Container(
                                  //color: Colors.red,
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.height / 5.5,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        produks.price,
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              20,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50,
                                ),
                                RatingBar(
                                  initialRating: 3,
                                  minRating: 1,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
          size: 40,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        selectedItemColor: Colors.orange[500],
        unselectedItemColor: Colors.orange[200],
        currentIndex: _currentIndex,
        onTap: onTappedBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25.0,
            ),
            title: Text(
              'home',
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
              size: 25.0,
            ),
            title: Text(
              'menu',
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 25.0,
            ),
            title: Text(
              'account',
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyCustomAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height / 11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Icon(
                    Icons.menu,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Text(
                      'XE',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
