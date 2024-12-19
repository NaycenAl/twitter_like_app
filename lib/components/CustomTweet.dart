import 'package:flutter/material.dart';
import 'package:twitter_like/MyColors.dart';
import 'package:twitter_like/models/tweet.dart';
import 'package:intl/intl.dart';

class CustomTweet extends StatefulWidget {
  Tweet tweet;
  CustomTweet({super.key, required this.tweet});

  @override
  State<CustomTweet> createState() => _CustomTweetState();
}

class _CustomTweetState extends State<CustomTweet> {
  @override
  Widget build(BuildContext context) {
    int? datebrut = widget.tweet.created_date;
    DateTime datetime = DateTime.fromMillisecondsSinceEpoch(datebrut! * 1000);
    String date = DateFormat('dd/MM/yyyy HH:mm').format(datetime);
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 14,
          children: [
            Row(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    widget.tweet!.profile ?? '',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.tweet!.author ?? 'John Doe',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      date.toString(),
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              widget.tweet!.message ?? '',
              style: TextStyle(fontSize: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up_alt_outlined),
                      onPressed: () {
                        print('Tweet liké');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {
                        print('Ajouté aux favoris');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.comment),
                      onPressed: () {
                        print('Ajouté aux favoris');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
