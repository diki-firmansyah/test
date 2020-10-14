import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tradaru_test/model/produk.dart';

class DetailProduct extends StatefulWidget {
  final Produk produk;
  DetailProduct({this.produk});

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.grey[200],
      appBar: MyCustomAppBar(
        height: MediaQuery.of(context).size.height / 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.transparent,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                    )
                  ],
                ),
                //color: Colors.red,
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
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
                                borderRadius: BorderRadius.circular(10),

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
                                widget.produk.information,
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 35,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height / 4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pink[100],
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                          )
                        ],
                      ),
                      child: ClipRRect(
                        child: Image(
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: MediaQuery.of(context).size.height / 3.5,
                          image: AssetImage(widget.produk.imageUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          //alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: <Widget>[
                    new SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 23,
                            ),
                            child: Container(
                              //color: Colors.red,
                              //alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    widget.produk.name,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              17,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            //color: Theme.of(context).accentColor,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                ),
                                Text(
                                  '[4.5]',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 23,
                      ),
                      child: Container(
                        //color: Colors.red,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: <Widget>[
                            Text(
                              widget.produk.deskripsi,
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 23,
                                //fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                                color: Colors.deepPurple,
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
                            child: Text(
                              'Size :',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width / 23,
                              ),
                              color: Colors.blueAccent,
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 6,
                            child: Text(
                              'US 6',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              //color: Colors.blueAccent,
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 6,
                            child: Text(
                              'US 7',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              //color: Colors.blueAccent,
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 6,
                            child: Text(
                              'US 8',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              //color: Colors.blueAccent,
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 6,
                            child: Text(
                              'US 9',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
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
                            child: Text(
                              'Available Color :',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(50),
                              color: Colors.yellowAccent,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(50),
                              color: Colors.pinkAccent,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(50),
                              color: Colors.purpleAccent,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(50),
                              color: Colors.blueAccent,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.white,
                  //border: Border.all(width: 3,color: Colors.green,style: BorderStyle.solid)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        //color: Colors.red,
                        //alignment: Alignment.center,
                        //width: MediaQuery.of(context).size.height / 5.5,
                        child: Text(
                          widget.produk.price,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.shopping_cart, color: Colors.blueAccent),
                            Text(
                              'Add To Chard',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
                    Icons.favorite,
                    color: Colors.pink,
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
