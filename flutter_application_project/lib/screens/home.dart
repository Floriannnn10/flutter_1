import 'package:flutter/material.dart';
import 'package:flutter_application_project/constants/color.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
          ),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                      ),
                      child: Text(
                        'All ToDos',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: tdGrey,
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      // mettre le titre le title en row et faire un  MainAxisAlignment.spaceBetween qui va mettre le menue et l'image sur le  meme alignement. Un peu comme justify-content: spaceBetween;
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // Pour le menu burger
          children: [
            Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            Container(
                height: 40,
                width: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('Assets/Images/Avatarrr.jpg'),
                )),
          ]),
    );
  }
}
