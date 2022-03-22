import "package:flutter/material.dart";

class NavBar extends StatelessWidget with PreferredSizeWidget {
  const NavBar({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red,
      centerTitle: true,
      leading: const IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        onPressed: null,
      ),
      actions: const <Widget>[
        TextButton(
            onPressed: null,
            child: Text(
              "Card(0)",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ))
      ],
    );
  }
}
