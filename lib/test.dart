import 'package:flutter/material.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({Key? key}) : super(key: key);

  @override
  _PuzzleState createState() => _PuzzleState();
}

GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

class _PuzzleState extends State<Puzzle> {
  bool _isBlueDropped = false;
  bool _isRedDropped = false;
  bool _isYelloDropped = false;
  bool _isGreenDropped = false;
  bool _isPinkDropped = false;
  String _blue = 'blue';
  String _red = 'red';
  String _yellow = 'yellow';
  String _green = 'green';
  String _pink = 'pink';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
        ),
          body: LayoutBuilder(
                builder: (context, constraints){
            
                  return Row(
            children: [
              Center(
                child: 
                Expanded(
                  flex: 3,
                  child: AspectRatio(
                      aspectRatio: 4 / 3,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return FractionallySizedBox(
                                widthFactor: 0.5,
                                heightFactor: 0.5,
                                child: Image.asset(_isBlueDropped
                                    ? 'assets/fish.png'
                                    : 'assets/water.png'),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _blue;
                            },
                            onAccept: (data) {
                              setState(() {
                                _isBlueDropped = true;
                              });
                            },
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return Container(
                                height: 160,
                                width: 200,
                                child: Image.asset(_isRedDropped
                                    ? 'assets/dog.png'
                                    : 'assets/kennel.png'),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _red;
                            },
                            onAccept: (data) {
                              setState(() {
                                _isRedDropped = true;
                              });
                            },
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return Container(
                                height: 160,
                                width: 200,
                                child: Image.asset(_isYelloDropped
                                    ? 'assets/deer.png'
                                    : 'assets/forest.png'),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _yellow;
                            },
                            onAccept: (data) {
                              setState(() {
                                _isYelloDropped = true;
                              });
                            },
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return Container(
                                height: 160,
                                width: 200,
                                child: Image.asset(_isGreenDropped
                                    ? 'assets/camel.png'
                                    : 'assets/desert.png'),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _green;
                            },
                            onAccept: (data) {
                              setState(() {
                                _isGreenDropped = true;
                              });
                            },
                          ),
                        ),
                         Positioned(
                          top: 250,
                          right: 340,
                                
                          child: DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return Container(
                                height: 160,
                                width: 200,
                                child: Image.asset(_isPinkDropped
                                    ? 'assets/bear.png'
                                    : 'assets/cave.png'),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _pink;
                            },
                            onAccept: (data) {
                              setState(() {
                                _isPinkDropped = true;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              Divider(
                thickness: 5,
                color: Colors.white,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Visibility(
                        visible: !_isRedDropped,
                        child: Draggable<String>(
                          // Data is the value this Draggable stores.
                          data: _red,
                          child: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/dog.png'),
                            ),
                          ),
                          feedback: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/dog.png'),
                            ),
                          ),
                          
                          childWhenDragging: Container(),
                        ),
                      ),
                      Visibility(
                        visible: !_isGreenDropped,
                        child: Draggable<String>(
                          // Data is the value this Draggable stores.
                          data: _green,
                          child: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/camel.png'),
                            ),
                          ),
                          feedback: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/camel.png'),
                            ),
                          ),
                          childWhenDragging: Container(),
                        ),
                      ),
                      Visibility(
                        visible: !_isBlueDropped,
                        child: Draggable<String>(
                          // Data is the value this Draggable stores.
                          data: _blue,
                          child: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/fish.png'),
                            ),
                          ),
                          feedback: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/fish.png'),
                            ),
                          ),
                          childWhenDragging: Container(),
                        ),
                      ),
                      Visibility(
                        visible: !_isYelloDropped,
                        child: Draggable<String>(
                          // Data is the value this Draggable stores.
                          data: _yellow,
                          child: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/deer.png'),
                            ),
                          ),
                          feedback: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/deer.png'),
                            ),
                          ),
                          childWhenDragging: Container(),
                        ),
                      ),
                        Visibility(
                        visible: !_isPinkDropped,
                        child: Draggable<String>(
                          data: _pink,
                          child: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/bear.png'),
                            ),
                          ),
                          feedback: Container(
                            height: 165.0,
                            width: 165.0,
                            child: Center(
                              child: Image.asset('assets/bear.png'),
                            ),
                          ),
                          childWhenDragging: Container(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
                    );
                },
                  ),
                  
          )
          );
  }

  void showSnackBarGlobal(BuildContext context, String message) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      message,
      textScaleFactor: 2,
    )
    )
    );
  }
}

























