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
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                      width: 40.0,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: mainColor,
                        // cursorRadius: Radius.circular(10.0),s
                        decoration: const InputDecoration(
                          alignLabelWithHint: true,

                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          // hintText: 'Search',
                          // hintText: 'What do people call you?',
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
