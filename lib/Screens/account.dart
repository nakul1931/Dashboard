import 'package:Off_Dash/allFiles.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: <Widget>[
          _top(),
          SizedBox(
            height: 20.0,
          ),
          _options(),
          _options(),
          _options(),
          _options(),
          _options()
        ]),
      ),
    );
  }

  Widget _options() {
    return Container(
      width: MediaQuery.of(context).size.width - 20.0,
      height: 80.0,
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(children: <Widget>[
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: mainColor,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text("Saved Address"),
                      ]),
                    ),
                    InkWell(
                      child: Icon(Icons.arrow_forward),
                      onTap: () => print("Check"),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Divider(
                  height: 1.0,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _top() {
    return Container(
      padding: EdgeInsets.fromLTRB(
          20.0, (MediaQuery.of(context).size.height) * 0.05, 10.0, 0.0),
      width: double.infinity,
      height: (MediaQuery.of(context).size.height) * 0.20,
      decoration: BoxDecoration(color: mainColor),
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10.0,
                ),
                // Text("My Account")
              ],
            ),
            SizedBox(width: 10.0),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hi! Chek", style: TextStyle(fontSize: 25.0)),
                  Text(
                    "Id: Chek",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
