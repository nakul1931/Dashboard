import 'package:Off_Dash/allFiles.dart';
import 'package:Off_Dash/main.dart';

final _heading = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

class DeliveryScreen extends StatefulWidget {
  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            _map(),
            _deliveryDetail(),
          ],
        ),
      ),
    );
  }

  Widget _map() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      color: mainColor,
      child: Center(child: Text("Map will come here")),
    );
  }

  Widget _deliveryDetail() {
    Widget _button({String title, IconData icon}) {
      return InkWell(
        // splashColor: mainColor,
        // highlightColor: mainColor,
        // focusColor: mainColor,
        borderRadius: BorderRadius.circular(20.0),
        onTap: () => print(title),
        child: Container(
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
          width: 125.0,
          height: 40.0,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(icon),
              SizedBox(
                width: 20.0,
              ),
              Text(title)
            ],
          ),
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Delivery Detail",
            style: _heading,
          ),
          Divider(
            thickness: 1.0,
            color: dividerColor,
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: 200.0,
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Name",
                              style: _heading,
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, size: 15.0),
                                SizedBox(width: 5.0),
                                Text("4.5")
                              ],
                            )
                          ])
                    ],
                  )),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _button(title: "Chat", icon: Icons.chat),
                    SizedBox(height: 10.0),
                    _button(title: "Call", icon: Icons.phone)
                  ])
            ],
          )
        ],
      ),
    );
  }
}
