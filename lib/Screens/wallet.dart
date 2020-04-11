import 'package:Off_Dash/allFiles.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  var textStylePayment = TextStyle(
    fontSize: 30,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            _top(),
          ],
        ),
      ),
    );
  }

  Widget _top() {
    return Container(
      padding: EdgeInsets.fromLTRB(
          25.0, (MediaQuery.of(context).size.height) * 0.14, 0.0, 0.0),
      width: double.infinity,
      height: (MediaQuery.of(context).size.height) * 0.20,
      decoration: BoxDecoration(color: mainColor),
      child: Text("Payment", style: textStylePayment),
    );
  }
}
