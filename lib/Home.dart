import 'allFiles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Color(0xFFE8E9EA),
          body: Stack(
            children: <Widget>[
              Positioned(
                top: 75,
                left: 10,
                right: 10,
                child: Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "5,129",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Sales Today",
                                style: TextStyle(
                                    color: Color(0xFF9C9FA4),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "5,129",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Sales Today",
                                style: TextStyle(
                                    color: Color(0xFF9C9FA4),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              Positioned(
                top: 185,
                left: 10,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Product Sales",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9C9FA4))),
                          Icon(Icons.add)
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _textContainer(),
                          Container(
                              child: Row(
                            children: <Widget>[
                              _percent(
                                  Color.fromARGB(10, 255, 0, 0),
                                  Colors.red,
                                  "Prev Week",
                                  Icons.arrow_downward,
                                  "42"),
                              SizedBox(
                                width: 15,
                              ),
                              _percent(
                                  Color.fromARGB(10, 0, 128, 0),
                                  Colors.green,
                                  "Prev Week",
                                  Icons.arrow_upward,
                                  "12")
                            ],
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget _textContainer() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("\$"),
              Text(
                "49",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text("Last Week",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF9C9FA4)))
        ],
      ),
    );
  }

  Widget _percent(Color _backColor, Color _textColor, String _title, var _icon,
      String _number) {
    var _text = _textColor;
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 80,
      // height: 50,
      decoration: BoxDecoration(
          color: _backColor, borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                _icon,
                color: _text,
              ),
              Text(_number + "%",
                  style: TextStyle(color: _text, fontWeight: FontWeight.bold)),
            ],
          ),
          Text(
            _title,
            style: TextStyle(color: _text, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
