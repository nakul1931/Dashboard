import 'package:Off_Dash/allFiles.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 0.5, // has the effect of softening the shadow
                    spreadRadius: 0.5, // has the effect of extending the shadow
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 30,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        "Location",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                  Container(child: Text("Location")),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                // color: Colors.redAccent,
                height: 400,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          height: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text("HEllo"),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          height: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text("HEllo"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          height: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text("HEllo"),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          height: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text("HEllo"),
                        ),
                      ],
                    ),
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
