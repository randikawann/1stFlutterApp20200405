import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}


class _QuoteListState extends State<QuoteList> {

  /*
  List<String> quotes = [
    'Be yourself; everyone else is already taken',
    'I have nothing to declare except my genious',
    'The trust is rarely pure and never simple'
  ]; */

  List<Quote> quotes = [
    Quote(author: 'osca wile', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'oscsssa wilecdc', text: 'I have nothing to declare except my genious'),
    Quote(author: 'oscascddc wilecd', text: 'The trust is rarely pure and never simple')

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesom quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quotes) => Text('autho: ${quotes.author} and text: ${quotes.text}') ).toList(),
      ),
    );
  }
}
