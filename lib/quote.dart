class Quote{
  String text;
  String author;

  /*
  Quote({String text, String author}){
    this.text = text;
    this.author = author;
  }
  */
  Quote({this.text, this.author});

}


//special things
/*
    Quote(String text, String author) //constructor in quote class
    Quote quote = new Quote("Be yourself; everyone else is already taken","oscar whilde") //in calling statement

    //when use
      Quote({String text, String author}){} //as constructor calling paramenters not need to have particular order.
      Quote quote = new Quote(author: 'oscar whilde', text: "Be yourself everyone else is already taken")

     //also when to the easy way above things
     Quote({this.text, this.author});
*/