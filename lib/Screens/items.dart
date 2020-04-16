import 'package:Off_Dash/allFiles.dart';

final textStyle = TextStyle(fontSize: 25.0);
final _placeOrderTextStyle = TextStyle(fontSize: 15.0, color: Colors.white);

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  Widget _rowText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Item",
          style: textStyle,
        ),
        Text(
          "Item",
          style: textStyle,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _placeOrder() {
      return Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.arrow_right,
              size: 40.0,
              color: Colors.white,
            ),
            Text(
              "Place Order",
              style: _placeOrderTextStyle,
            )
          ],
        ),
      );
    }

    Widget _placeOrderButton() {
      return ButtonTheme(
        height: 50.0,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: RaisedButton(
          color: Colors.purple[800],
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 30.0, 5.0),
          onPressed: () {
            print("Place Order");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _placeOrder(),
              Text(
                "13.00",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20.0),
                width: double.infinity,
                // color: Colors.blueAccent,
                child: Column(
                  children: <Widget>[
                    _rowText(),
                    _rowText(),
                    Divider(
                      thickness: 2.0,
                    ),
                    _rowText(),
                    _rowText(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                
                width: double.infinity,
                color: Colors.grey[200],
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Check"),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    _placeOrderButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
