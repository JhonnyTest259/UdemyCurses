import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fmzl1-1.fna.fbcdn.net/v/t1.6435-9/129711076_224789719019105_4523049733879340262_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE4KFHL0OoGaB4ohyBSp3TP2XKOYxURHarZco5jFREdqgzbFh4yLRsvak6lmuvzSL0&_nc_ohc=79_OSV2YHRcAX9u7poO&_nc_ht=scontent.fmzl1-1.fna&oh=00_AT9dcCN0t3zLMM1K_-8VE5BMagtcmlByQfqEitm7TNy-lA&oe=624D7F28'),
              //radius: 15.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuNNjKlJ2SZbTgPj43Z6uv2uupdUEurO5ypQ&usqp=CAU'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
