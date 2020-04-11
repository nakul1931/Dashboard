import 'package:Off_Dash/allFiles.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              width: double.infinity,
              height: 80,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textAlignVertical: TextAlignVertical.bottom,
                        cursorColor: mainColor,
                        decoration: const InputDecoration(
                          alignLabelWithHint: true,
                          hintMaxLines: 1,
                          hintText: "Search",
                          icon: Icon(
                            Icons.search,
                            size: 30.0,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
