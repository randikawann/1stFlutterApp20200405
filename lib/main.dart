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


  List<Quote> quotes = [
    Quote(author: 'osca wile', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'oscsssa wilecdc', text: 'I have nothing to declare except my genious'),
    Quote(author: 'oscascddc wilecd', text: 'The trust is rarely pure and never simple')

  ];

  Widget quoteTemplate(quote){
    // from Flutter Outline rightclick "Card" select "extract widget" change name.
    return QuoteCard(quote: quote);
  }


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
        children: quotes.map((quote) => quoteTemplate(quote) ).toList(),

      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  Quote quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
