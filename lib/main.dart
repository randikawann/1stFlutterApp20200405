import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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

  /* no need this widget because of Quote card class can be access directly....
  Widget quoteTemplate(quote){
    // from Flutter Outline rightclick "Card" select "extract widget" change name.
    return QuoteCard(quote: quote);
  }
*/

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
        children: quotes.map((quote) => QuoteCard(
          quote:  quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }
        ) ).toList(),

      ),
    );
  }
}

