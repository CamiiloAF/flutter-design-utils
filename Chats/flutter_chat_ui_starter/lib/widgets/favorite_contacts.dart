import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Favorite contacts',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  iconSize: 30,
                  color: Colors.blueGrey,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (_, index) {
                  final favorite = favorites[index];

                  return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            user: favorite,
                          ),
                        ),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(favorite.imageUrl),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            favorite.name,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
