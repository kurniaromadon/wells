import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  //logout user  
  void logout(){}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          //home tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
            child: ListTile(leading: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: const Text(
              "H O M E"),
              onTap: (){
                //pop drawer
                Navigator.pop(context);
              }
            ),
          ),

          //profile tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(leading: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: const Text(
              "P R O F I L E"),
              onTap: (){
                //navigator to profile page
                Navigator.pushNamed(context, '/profile_page');
              }
            ),
          ),

          //users tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(leading: Icon(
              Icons.group,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: const Text(
              "U S E R S"),
              onTap: (){
                //navigator to users page
                Navigator.pushNamed(context, '/users_page');
              }
            ),
          ),
            ],
          ),

          //logout tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(leading: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: const Text(
              "L O G O U T"),
              onTap: (){
                // pop drawer
                Navigator.pop(context);

                //logout
                logout();
              }           
            ),
          ),
        ],
      ),
    );
  }
}