import 'package:flutter/material.dart';
import 'package:layouting_instagram/widgets/info_item.dart';
import 'package:layouting_instagram/widgets/profile_picture.dart';
import 'package:layouting_instagram/widgets/story_item.dart';
import 'package:layouting_instagram/widgets/tab_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: Text('Muhammad'),
              onTap: () {},
            ),
            InkWell(
              borderRadius: BorderRadius.circular(100),
              child: Icon(Icons.arrow_drop_down),
              onTap: () {},
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          // Profile
          Row(
            children: [
              ProfilePicture(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoItem('Post', '533'),
                    InfoItem('Followers', '120k'),
                    InfoItem('Following', '240'),
                  ],
                ),
              )
            ],
          ),
          // username and text status
          SizedBox(
            height: 15,
          ),
          Text(
            'Muhammad',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          RichText(
            text: TextSpan(
                text:
                    'aliqua officia ut sed consequat dolore fugiat aliquip cillum ipsum aliquip cillum ipsum',
                children: [
                  TextSpan(text: ' ', style: TextStyle(color: Colors.blue)),
                  TextSpan(
                      text: '#hastag', style: TextStyle(color: Colors.blue)),
                  TextSpan(
                      text: '#hastag', style: TextStyle(color: Colors.blue)),
                ]),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              print('link goes here clicked');
            },
            child: Text(
              'Link goes here',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 10),
          // edit profile button
          OutlinedButton(
            onPressed: () {},
            child: Text('Edit Profile'),
            style: ButtonStyle(
              side: WidgetStatePropertyAll(
                BorderSide(width: 2, color: Colors.blue),
              ),
              shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
          // story
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StoryItem(
                        title: 'Story 1',
                      ),
                      StoryItem(
                        title: 'Story 2',
                      ),
                      StoryItem(
                        title: 'Story 3',
                      ),
                      StoryItem(
                        title: 'Story 4',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    print('New story clicked');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.amber,
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.purple,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            child: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('New'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Post header
          SizedBox(height: 18),
          Row(
            children: [
              TabItem(
                isActive: true,
                iconData: Icons.grid_on_outlined,
              ),
              TabItem(
                isActive: false,
                iconData: Icons.person_pin_outlined,
              ),
            ],
          ),
          // Post body
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemCount: 533,
            itemBuilder: (context, index) => Image.network(
              'https://picsum.photos/id/${index + 10}/200/300',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: 4,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter_rounded,
            ),
            label: 'Movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
