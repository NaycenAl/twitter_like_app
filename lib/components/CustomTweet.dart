import 'package:flutter/material.dart';

class CustomTweet extends StatefulWidget {
  const CustomTweet({super.key});

  @override
  State<CustomTweet> createState() => _CustomTweetState();
}

class _CustomTweetState extends State<CustomTweet> {
  @override
  Widget build(BuildContext context) {
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
                  backgroundImage: AssetImage(
                    'assets/images/yoda.jpg',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '1h ago',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 250,
              height: 150,
              child: Image.asset(
                'assets/images/yoda.jpg',
              ),
            ),
            Text(
              'Voici un tweet génial ! Il y a beaucoup de choses intéressantes dans ce tweet...',
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
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 126, 102, 150),
                          const Color.fromARGB(255, 56, 37, 102)
                        ],
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Comment',
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
