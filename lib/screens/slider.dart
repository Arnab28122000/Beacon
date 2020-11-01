import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Beacon App",
        styleTitle:
            TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description:
            "Welcome to Beacon. Swipe left to see what we do",
        styleDescription:
            TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        pathImage: "assets/images/beacon.png",
        backgroundColor: Color.fromARGB( 1,255,101,80),
      ),
    );
    slides.add(
      new Slide(
        title: "Find Everything",
        styleTitle:
            TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description: "From restaurants to medical shops, from salons to hardware stores, we help you navigate to everything near you",
        styleDescription:
            TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        pathImage: "assets/images/map.png",
        backgroundColor: Colors.red[200],
      ),
    );
    slides.add(
      new Slide(
        title: "Trusted Stores",
        styleTitle:
            TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description:
            "Read reviews, compare ratings and chosse wisely with Beacon",
        styleDescription:
            TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        pathImage: "assets/images/accountant.png",
        backgroundColor: Colors.amber[300],
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    Navigator.popAndPushNamed(context, '/signup');
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
      
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 20),
                              child: GestureDetector(
                    child: Image.asset(
                  currentSlide.pathImage,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                )),
              ),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Padding(
                padding: EdgeInsets.only(left:20,right:20),
                              child: Container(
                  child: Text(
                    currentSlide.description,
                    style: currentSlide.styleDescription,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(top: 20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50,bottom: 10),
                              child: Container(
                    height: 73,
                      padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.white,
                        child: Text('Sign Up',style: TextStyle(fontSize: 23, color: Colors.red[200]),),
                        onPressed: () {
                          print(nameController.text);
                          print(passwordController.text);
                        },
                      )),
              ),
              
            //  Container(
            //     padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
            //     child: new RaisedButton(
            //       padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0),
            //       color: Colors.white,
            //       onPressed: () {},
            //       child: new Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: <Widget>[
            //           new Image.asset(
            //             'assets/images/google.png',
            //             height: 48.0,
            //           ),
            //           new Container(
            //             padding: EdgeInsets.only(left: 10.0,right: 10.0),
            //               child: new Text("Sign Up with Google",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
            //           ),
            //         ],
            //       )
            //     ),
            //   ),
              Container(
                  child: Row(
                    children: <Widget>[
                      Text('Does not have account?', style: TextStyle(color: Colors.white),),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ),
                ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Colors.amber[100].withOpacity(.2),
      highlightColorSkipBtn: Color(0xffffcc5c),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33ffcc5c),
      highlightColorDoneBtn: Color(0xffffcc5c),

      // Dot indicator
      colorDot: Color(0xffffcc5c),
      sizeDot: 13.0,
      //typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.red[200],
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}