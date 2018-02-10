import 'package:flutter/material.dart';

class ExpensesState extends State<Expense> {
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
                    hintText: "Enter Todays Expenses "
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

class Expense extends StatefulWidget{
  @override
  ExpensesState createState() => new ExpensesState();
}