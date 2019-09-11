import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_eudeka_tugas03/main.dart';

class DetailView extends StatelessWidget {
  final Item item;

  const DetailView({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Details',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
            child: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: new EdgeInsets.all(10.0),
                    child: Image.network(item.image),
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          item.title,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          item.subtitle,
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 30.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(32.0)),
                  color: Colors.black87,
                  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
