import 'package:beacon/screens/book.dart';
import 'package:flutter/material.dart';
import '../theme/uidata.dart';
import '../widgets/image_card.dart';
import '../widgets/my_column.dart';
import '../widgets/specialist_column.dart';

class SalonHomePage extends StatefulWidget {
  static const routeName = '/salonHomePage';
  @override
  _SalonHomePageState createState() => _SalonHomePageState();
}

class _SalonHomePageState extends State<SalonHomePage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87),
            onPressed: () {Navigator.of(context).pop();}),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(right: 15, top: 15),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                "assets/images/user.jpg",
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top:16, left:16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  height: screen_size_height * .2,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ImageCard(cardImg: "assets/images/menshair.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "assets/images/braid4.jpg"),
                    ],
                  )),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "assets/images/braid.png",
                        columnTxt: "Braids",
                        columnBg: UIData.lightColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, BookPage.routeName),
                      child: MyColumn(
                        columnImg: "assets/images/abuja.png",
                        columnTxt: "Abuja",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, BookPage.routeName),
                      child: MyColumn(
                        columnImg: "assets/images/blow.png",
                        columnTxt: "Blowdry",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, BookPage.routeName),
                      child: MyColumn(
                        columnImg: "assets/images/haircut.png",
                        columnTxt: "Haircut",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, BookPage.routeName),
                      child: MyColumn(
                        columnImg: "assets/images/relaxer.png",
                        columnTxt: "Relaxer",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, BookPage.routeName),
                      child: MyColumn(
                        columnImg: "assets/images/shampoo.png",
                        columnTxt: "Shampoo",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, BookPage.routeName),
                      child: MyColumn(
                        columnImg: "assets/images/nail.png",
                        columnTxt: "Manicure",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, BookPage.routeName),
                      child: MyColumn(
                        columnImg: "assets/images/more.png",
                        columnTxt: "More",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Suggestions for you",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    FlatButton(
                        onPressed: () {},
                        child: Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),
              SizedBox(height: 6),
              Container(
                  height: 230,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SpecialistColumn(
                          specImg: "assets/images/Loreal_Salon.jpg", specName: "Loreal Salon"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "assets/images/jawed_habib.jpg", specName: "Jawed Habib"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "assets/images/lakmesalon.jpg",
                          specName: "Lakme Salon"),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
