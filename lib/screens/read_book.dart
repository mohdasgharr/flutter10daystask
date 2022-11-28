import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReadBook extends StatefulWidget {
  const ReadBook({Key? key}) : super(key: key);
  @override
  State<ReadBook> createState() => _ReadBookState();
}

class _ReadBookState extends State<ReadBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
        height: 140,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                'https://i2.wp.com/greatstorybook.com/wp-content/uploads/2014/09/worstwitch.jpg?resize=191%2C263',
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 280, top: 2),
          child: Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: const [
              Text('Price: 120'),
              Text('Rating: 3.4'),
            ],
          ),
          Column(
            children: const [
              Text('Pages:'),
              Text('Price: 90'),
            ],
          ),
        ]),
      ),
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'About',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          textAlign: TextAlign.left,
          text: const TextSpan(
              text:
                  'he has been a lon gtime ago i england ithere lived a woman in who was aqueen of\n'
                  'that is reason why i amm herre like that desktop .',
              style: TextStyle(color: Colors.black87),
              children: [
                TextSpan(
                  text: 'more',
                  style: TextStyle(color: Colors.blue),
                ),
              ]),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/img_5.png', height: 50),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'mike hussey',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  '1890  2016',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Reviews',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/img_7.png', height: 50),
            ),
            Column(
              children: [
                const Text('Aftab Alam '),
                RatingBar.builder(
                  initialRating: 2.4,
                  minRating: 3,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 22,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.pink,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            )
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'for above i love this bokk tittle and conclsion of the bokk,',
          style: TextStyle(fontSize: 20),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/img_6.png', height: 60),
            ),
            Column(
              children: [
                const Text('maria '),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 3,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 22,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.pink,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            )
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'I want this book rating 5 star but i couldnot,there is some '
          'but ther is some ilogical content in the third chapter , someone may be like it'
          'i am not going to force to give more rating or less ,its literalt depend on prospective of others mind and thinkinking '
          'on the conclusion it gave advantage to me .',
          style: TextStyle(fontSize: 20),
        ),
      ),
    ]));
  }
}
