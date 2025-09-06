import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final stories = [
    Story(name: 'Your Story', add: true),
    Story(name: 'Renad', img: 'assets/images/user1.png'),
    Story(name: 'Ranim', img: 'assets/images/user2.png'),

  ];

  final posts = [
    Post(
      name: 'Renad',
      img: 'assets/images/user1.png',
      time: '2 hrs ago',
      text: 'Beautiful day at the beach! ☀',
      postImg: 'assets/images/post1.png',
      likes: 245, comments: 32, shares: 5,
    ),
    Post(
      name: 'Ranim',
      img: 'assets/images/user2.jpg',
      time: '5 hrs ago',
      text: 'Just finished my new project!',
      likes: 512, comments: 45, shares: 12,
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: Text("facebook",
          style: TextStyle(
              color: Color(0xFF1877F2),
              fontWeight: FontWeight.bold,
              fontSize: 26)),
      actions: [
        IconButton(icon: Icon(Icons.add_circle_outline, color: Colors.black), onPressed: () {}),
        IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: () {}),
        IconButton(icon: Icon(Icons.messenger_outline, color: Colors.black), onPressed: () {}),
      ],
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          // create post
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user_profile.jpg')),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25)),
                    child: Text("What's on your mind?",
                        style: TextStyle(color: Colors.grey[700])),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          // stories
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (c, i) => StoryWidget(story: stories[i]),
            ),
          ),
          Divider(),
          // posts
          ListView.builder(
            itemCount: posts.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (c, i) => PostWidget(post: posts[i]),
          )
        ],
      ),
    ),
  );
}

class Story {
  final String name, img;
  final bool add;
  Story({required this.name, this.img = '', this.add = false});
}

class StoryWidget extends StatelessWidget {
  final Story story;
  StoryWidget({required this.story});
  @override
  Widget build(BuildContext context) => Container(
    width: 90,
    margin: EdgeInsets.all(6),
    child: Column(
      children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[300],
            image: story.img.isNotEmpty
                ? DecorationImage(image: AssetImage(story.img), fit: BoxFit.cover)
                : null,
          ),
          child: story.add
              ? Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xFF1877F2),
              child: Icon(Icons.add, color: Colors.white, size: 18),
            ),
          )
              : null,
        ),
        SizedBox(height: 5),
        Text(story.name,
            maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 13))
      ],
    ),
  );
}

class Post {
  final String name, img, time, text, postImg;
  final int likes, comments, shares;
  Post(
      {required this.name,
        required this.img,
        required this.time,
        required this.text,
        this.postImg = '',
        this.likes = 0,
        this.comments = 0,
        this.shares = 0});
}

class PostWidget extends StatelessWidget {
  final Post post;
  PostWidget({required this.post});
  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(post.img)),
          title: Text(post.name, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(post.time),
          trailing: Icon(Icons.more_horiz),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(post.text),
        ),
        if (post.postImg.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Image.asset(post.postImg, fit: BoxFit.cover, height: 200, width: double.infinity),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [Icon(Icons.thumb_up, size: 16, color: Color(0xFF1877F2)), SizedBox(width: 4), Text('${post.likes}')]),
              Text("${post.comments} comments • ${post.shares} shares"),
            ],
          ),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(onPressed: () {}, icon: Icon(Icons.thumb_up, color: Colors.grey), label: Text("Like")),
            TextButton.icon(onPressed: () {}, icon: Icon(Icons.comment, color: Colors.grey), label: Text("Comment")),
            TextButton.icon(onPressed: () {}, icon: Icon(Icons.share, color: Colors.grey), label: Text("Share")),
          ],
        )
      ],
    ),
  );
}