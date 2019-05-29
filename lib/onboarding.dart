import 'package:flutter/material.dart';
import 'package:optimitech/pager_model.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PagerModel> pages = List<PagerModel>();
  void _addPages() {
    pages.add(PagerModel(
      "WELCOME",
      "This is Your First Time Here",
      'assets/images/1.png',
      Icons.search,
    ));
    pages.add(PagerModel(
      "WITH LOVE",
      "Do you Know Who We Are",
      'assets/images/2.png',
      Icons.favorite_border,
    ));
    pages.add(PagerModel(
      "GO TO HOME",
      "We Are Here For Helping You",
      'assets/images/3.png',
      Icons.face,
    ));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();
    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].imagey),
                        fit: BoxFit.fill,
                        //colorFilter: ColorFilter.mode(Colors.lightBlue, BlendMode.overlay),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      width: 250.0,
                      height: 300.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            pages[index].icony,
                            size: 150.0,
                            color: Colors.white,
                          ),
                          Text(
                            pages[index].titly,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10.0,
                              left: 10.0,
                              top: 10.0,
                            ),
                            child: Text(
                              pages[index].descriptiony,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: pages.length,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 55.0,
              child: RaisedButton(
                color: Colors.blueAccent.withOpacity(0.5),
                onPressed: () {},
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      letterSpacing: 7.5,
                      wordSpacing: 5.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
