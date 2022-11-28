import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project10days/constants/constant.dart';
import 'package:project10days/models/model_data.dart';
import 'package:project10days/screens/read_book.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<ModelData>? _dataa =
      []; //when the list of object doesn't have name  {[....]}
  Future<List<ModelData>?> loadJsonData() async {
    final String jsonText = await rootBundle.loadString("assets/jsondata.json");
    final newData = json.decode(jsonText);
    // _dataa = (newData["data"] as List)
    //     .map((e) => ModelData.fromJson(e))
    //     .toList();
    setState(() {
      _dataa?.addAll(List<ModelData>.from(
          newData.map((model) => ModelData.fromJson(model))));
    });
    print(_dataa?.length);
  }

  // CartProvider_1 cartObject =CartProvider_1();
  ModelData model = ModelData();
  final value = Constant();
  double? _rating;
  IconData? _selectedIcon;
  double? _rating1;
  IconData? _selectedIcon1;
  IconData? _selectedIcon2;
  double? _rating2;
  double? _rating3;
  IconData? _selectedIcon3;
  double? _rating4;
  IconData? _selectedIcon4;
  double? _rating5;
  IconData? _selectedIcon5;

  @override
  void initState() {
    super.initState();
    value.getIntValuesSF();
    value.getIntValues();
    value.getIntVal();
    value.getIntValuess();
    value.getIntValuesSF4();
    value.getIntValuesSF5();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome '),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              title: Text(
                'Quote of the day',
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text(
                'the read book is ready for the moisitis tamanna bhatia sehag sahab jarage ha usi ko kahte hai reader han na',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Special book for you',
            style: TextStyle(fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("${_dataa?[0].img}"),
                    height: 150,
                  ),

                  // Image.network('${_dataa?[0].img}',height: 150,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Total Rating: ${_dataa?[0].rate}'),
                      Text('No of pages: ${_dataa?[0].page}'),
                      Text('Rs: ${_dataa?[0].price}'),
                      Row(
                        children: [
                          const Icon(Icons.thumb_up_alt_rounded),
                          Stack(
                            children: [
                              const Text('Likes'),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      value.incrementCounter();
                                    });
                                    // Provider.of<Constant>(context, listen: false).incrementCounter();
                                  },
                                  icon: const Icon(
                                    Icons.favorite_outlined,
                                    color: Colors.red,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  '${value.counterr}',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            child: RatingBar.builder(
                              initialRating: _rating ?? 0.0,
                              // minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemSize: 18,
                              // itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Icon(
                                _selectedIcon ?? Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                _rating = rating;
                                setState(() {});
                              },
                            ),
                          ),
                          Text(
                            ' ($_rating) *',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ReadBook()));
                        },
                        child: Container(
                            color: Colors.white, child: const Text('Read Me')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Stack(children: [
                Image(
                  image: AssetImage("${_dataa?[1].img}"),
                  height: 150,
                ),

                // Image.network('${_dataa?[1].img}',height: 160,width: 150,),
              ]),
              Column(
                children: [
                  Text('${_dataa?[1].rate}'),
                  Text('No of pages: ${_dataa?[1].page}'),
                  Text('Rs: ${_dataa?[1].price}'),
                  Row(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  value.incrementCounter1();
                                });

                                // Provider.of<Constant>(context, listen: false).incrementCounter();
                              },
                              icon: const Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Text(
                              '${value.count1}',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: RatingBar.builder(
                          initialRating: _rating1 ?? 0.0,
                          // minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemSize: 18,
                          // itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, _) => Icon(
                            _selectedIcon1 ?? Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            _rating1 = rating;
                            setState(() {});
                          },
                        ),
                      ),
                      Text(
                        ' ($_rating1) *',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReadBook()));
                    },
                    child: Container(
                        color: Colors.white, child: const Text('Read Me')),
                  ),
                ],
              )
            ]),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                Image(
                  image: AssetImage("${_dataa?[2].img}"),
                  height: 150,
                ),

                // Image.network('${_dataa?[2].img}',height: 200,width: 150,),
                Column(
                  children: [
                    Text('${_dataa?[2].rate}'),
                    Text('No of pages: ${_dataa?[2].page}'),
                    Text('Rs: ${_dataa?[2].price}'),
                    Row(
                      children: [
                        Stack(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    value.incrementCounter2();
                                  });

                                  // Provider.of<Constant>(context, listen: false).incrementCounter();
                                },
                                icon: const Icon(
                                  Icons.favorite_outlined,
                                  color: Colors.red,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Text(
                                '${value.count2}',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: RatingBar.builder(
                            initialRating: _rating2 ?? 0.0,
                            // minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemSize: 18,
                            // itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                            itemBuilder: (context, _) => Icon(
                              _selectedIcon2 ?? Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              _rating2 = rating;
                              setState(() {});
                            },
                          ),
                        ),
                        Text(
                          ' ($_rating2) *',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ReadBook()));
                      },
                      child: Container(
                          color: Colors.white, child: const Text('Read Me')),
                    ),
                  ],
                )
              ])),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Image(
                image: AssetImage("${_dataa?[3].img}"),
                height: 150,
              ),

              // Image.network('${_dataa?[3].img}',height: 160,width: 150,),
              Column(
                children: [
                  Text('Total Rating: ${_dataa?[3].rate}'),
                  Text('No of pages: ${_dataa?[3].page}'),
                  Text('Rs: ${_dataa?[3].price}'),
                  Row(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  value.incrementCounter3();
                                });

                                // Provider.of<Constant>(context, listen: false).incrementCounter();
                              },
                              icon: const Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Text(
                              '${value.count3}',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: RatingBar.builder(
                          initialRating: _rating3 ?? 0.0,
                          // minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemSize: 18,
                          // itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, _) => Icon(
                            _selectedIcon3 ?? Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            _rating3 = rating;
                            setState(() {});
                          },
                        ),
                      ),
                      Text(
                        ' ($_rating3) *',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReadBook()));
                    },
                    child: Container(
                        color: Colors.white, child: const Text('Read Me')),
                  ),
                ],
              )
            ]),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Image(
                image: AssetImage("${_dataa?[4].img}"),
                height: 150,
              ),

              // Image.network('${_dataa?[4].img}',height: 160,width: 150,),
              Column(
                children: [
                  Text('Total Rating: ${_dataa?[4].rate}'),
                  Text('No of pages: ${_dataa?[4].page}'),
                  Text('Rs: ${_dataa?[4].price}'),
                  Row(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  value.incrementCounter4();
                                });

                                // Provider.of<Constant>(context, listen: false).incrementCounter();
                              },
                              icon: const Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Text(
                              '${value.count4}',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: RatingBar.builder(
                          initialRating: _rating4 ?? 0.0,
                          // minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemSize: 18,
                          // itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, _) => Icon(
                            _selectedIcon4 ?? Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            _rating4 = rating;
                            setState(() {});
                          },
                        ),
                      ),
                      Text(
                        ' ($_rating4) *',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReadBook()));
                    },
                    child: Container(
                        color: Colors.white, child: const Text('Read Me')),
                  ),
                ],
              )
            ]),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Image(
                image: AssetImage("${_dataa?[5].img}"),
                height: 150,
              ),

              // Image.network('${_dataa?[5].img}',height: 160,),
              Column(
                children: [
                  Text('Total Rating: ${_dataa?[5].rate}'),
                  Text('No of pages: ${_dataa?[5].page}'),
                  Text('Rs: ${_dataa?[5].price}'),
                  Row(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  value.incrementCounter5();
                                });

                                // Provider.of<Constant>(context, listen: false).incrementCounter();
                              },
                              icon: const Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Text(
                              '${value.count5}',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: RatingBar.builder(
                          initialRating: _rating4 ?? 0.0,
                          // minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemSize: 18,
                          // itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, _) => Icon(
                            _selectedIcon5 ?? Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            _rating5 = rating;
                            setState(() {});
                          },
                        ),
                      ),
                      Text(
                        ' ($_rating5) *',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReadBook()));
                    },
                    child: Container(
                        color: Colors.white, child: const Text('Read Me')),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
