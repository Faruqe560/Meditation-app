import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    String selectImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    selectImg = arguments['image'];
    selectTitle = arguments['title'];
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(227, 248, 248, 248),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.43,
            width: screenWidth,
            color: Color(0xffc7b8f5),
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/path.png"))),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            '$selectTitle',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: screenWidth * 0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "3-10 Min Course",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Live Happier And Healthier By Learning The FundaMentals Of Meditation And Mindfulness",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: screenWidth * 0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(48),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.search,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Search",
                                                hintStyle:
                                                    TextStyle(fontSize: 15)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/$selectImg.png"),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: screenWidth,
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  sessionWidget('session 1', true),
                                  sessionWidget('session 2', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  sessionWidget('session 3', true),
                                  sessionWidget('session 4', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  sessionWidget('session 5', true),
                                  sessionWidget('session 6', false),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Text(
                            "$selectTitle",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 0, 208, 255)
                                        .withOpacity(0.50),
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/$selectImg.png"),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Basics 2',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Start and deepen your patience",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 0, 208, 255)
                                        .withOpacity(0.50),
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/$selectImg.png"),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Basics 3',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Start and deepen your patience",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        FaIcon(FontAwesomeIcons.calendar),
                        Text("Today")
                      ],
                    ),
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.dumbbell,
                          color: Colors.orange,
                        ),
                        Text(
                          "All Exercise",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.settings,
                        ),
                        Text("Setting")
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container sessionWidget(String title, bool activeOrNot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 0, 208, 255).withOpacity(0.50),
              blurRadius: 8,
              spreadRadius: 1)
        ],
      ),
      child: Row(
        children: [
          Icon(
            (activeOrNot == true)
                ? Icons.play_circle_filled
                : Icons.play_circle_outline,
            color: Color(0xff817dc0),
            size: 35,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            "$title",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
