import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Firstpage extends StatefulWidget {
  Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List<Map> Books = [
    {
      'image':
          'https://play-lh.googleusercontent.com/LByrur1mTmPeNr0ljI-uAUcct1rzmTve5Esau1SwoAzjBXQUby6uHIfHbF9TAT51mgHm',
      'name': 'clash of clans',
      'rating': '4.4'
    },
    {
      'image':
          'https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg',
      'name': ' Pubg mobile',
      'rating': '4.5'
    },
    {
      'image':
          'https://media.pocketgamer.biz/2021/7/111503/konamiefootball-r225x225.jpg',
      'name': 'Pes',
      'rating': '4.5'
    },
    {
      'image':
          'https://play-lh.googleusercontent.com/3ZKfMRp_QrdN-LzsZTbXdXBH-LS1iykSg9ikNq_8T2ppc92ltNbFxS-tORxw2-6kGA',
      'name': 'Super mario',
      'rating': '4.5'
    },
    {
      'image':
          'https://www.formula1.com/content/dam/fom-website/manual/Trademarks/f1-red-800px.png',
      'name': 'F1',
      'rating': '3.9'
    },
    {
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Moto_Gp_logo.svg/640px-Moto_Gp_logo.svg.png',
      'name': 'Moto gp',
      'rating': '4.3'
    },
  ];
  List<Map> apps = [
    {
      'image':
          'https://play-lh.googleusercontent.com/bYtqbOcTYOlgc6gqZ2rwb8lptHuwlNE75zYJu6Bn076-hTmvd96HH-6v7S0YUAAJXoJN',
      'name': 'whatsapp',
      'rating': '4.4'
    },
    {
      'image':
          'https://img.freepik.com/premium-vector/instagram-social-media-icon-gradient-social-media-logo_197792-4682.jpg?w=2000',
      'name': 'instagram',
      'rating': '43'
    },
    {
      'image':
          'https://economictimes.indiatimes.com/thumb/msid-94635807,width-1200,height-900,resizemode-4,imgsize-4700/twitter-blue-subscribers-getting-edit-feature.jpg?from=mdr',
      'name': 'twitter',
      'rating': '4.1'
    },
  ];
  List<Map> business = [
    {
      'image':
          'https://play-lh.googleusercontent.com/HArtbyi53u0jnqhnnxkQnMx9dHOERNcprZyKnInd2nrfM7Wd9ivMNTiz7IJP6-mSpwk',
      'name': 'google pay',
      'rating': '4.1'
    },
    {
      'image':
          'https://play-lh.googleusercontent.com/6iyA2zVz5PyyMjK5SIxdUhrb7oh9cYVXJ93q6DZkmx07Er1o90PXYeo6mzL4VC2Gj9s',
      'name': 'phonepe',
      'rating': '4.3'
    },
    {
      'image':
          'https://play-lh.googleusercontent.com/-bKVv7znUY-sU5fTgDLa8XSGa-G7YWNOdYUsxoeFKH1BUF7PYGB2sYS1oTFKmEbXtpdM',
      'name': 'amazon',
      'rating': '4.3'
    },
    {
      'name': 'flipkart',
      'image':
          'https://logos-world.net/wp-content/uploads/2020/11/Flipkart-Emblem.png',
      'rating': '4.5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Text(
          'Top rated games',
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Books.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(Books[index]['image']),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Text(Books[index]['name'],
                            style: TextStyle(fontSize: 15)),
                      ),
                      Text('Rating'),
                      Icon(
                        Icons.star,
                        size: 13,
                      ),
                      Text(Books[index]['rating']),
                    ],
                  ),
                );
              }),
        ),
        Text('actions',textAlign:TextAlign.start ),
        SizedBox(

          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: apps.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(apps[index]['image']),
                        ),
                      ),
                      Text(apps[index]['name']),
                      Text('Rating'),
                      Text(apps[index]['rating']),
                      Icon(Icons.star, size: 13),
                    ],
                  ),
                );
              }),
        ),
        Text('suggested for you',textAlign: TextAlign.start),
        SizedBox(
          height: 200,
          child: ListView.builder(

              scrollDirection: Axis.horizontal,
              itemCount: business.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4)),
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(business[index]['image']),
                        ),
                      ),
                      Text(business[index]['name']),
                      Text(business[index]['rating']),
                      Icon(Icons.star, size: 13),

                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
