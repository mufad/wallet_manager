import 'package:flutter/material.dart';

class IncomeState extends State<Income> {
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Enter Todays Income "
                ),
                controller: _textController,
                onSubmitted: _handleSubmitted,
              ),
              new Container(
                margin: const EdgeInsets.all(8.0),
                child: new RaisedButton(onPressed: () => _handleSubmitted(_textController.text),
                  color: Colors.teal,
                  child: new Text("Add Now",
                    style: new TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

}

class Income extends StatefulWidget{
  @override
  IncomeState createState() => new IncomeState();
}