import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart' as badges;


import 'product_list.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(onPressed:(){}, icon: Icon(Icons.notifications)),
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                  accountName: Text(
                    "Pech Nol",
                  ),
                  accountEmail: Text("pechnol@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://instagram.fpnh5-4.fna.fbcdn.net/v/t51.29350-15/283947401_139916258624520_1237234024019927147_n.jpg?stp=dst-jpg_e35_p1080x1080&_nc_ht=instagram.fpnh5-4.fna.fbcdn.net&_nc_cat=100&_nc_ohc=XwSQ75Bkwr0Q7kNvgEinvLI&_nc_gid=bcee4fd0a0384a12b19965254101f609&edm=ANTKIIoBAAAA&ccb=7-5&oh=00_AYA8pygufEq8PCs8GevoYa3AS0TE7p-kenQwdj7LdsHytg&oe=672EA98C&_nc_sid=d885a2"),
                  )),
              ListTile(
                leading: const Icon(
                  Icons.line_style,
                  size: 50,
                ),
                title:
                const Text("Product List", style: TextStyle(fontSize: 18)),
                subtitle: const Text("display all product item..."),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductList()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.manage_accounts,
                  size: 50,
                ),
                title: const Text("Profile", style: TextStyle(fontSize: 18)),
                subtitle: const Text("view or edit your profile"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductList()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.contact_page,
                  size: 50,
                ),
                title: const Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: const Text("contact our team while issue"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductList()));
                },
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Version 1.0",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 2,
              ),
              Row(
                children: [

                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      child: const Card(
                        child: SizedBox(
                          height: 100,
                          child: Column(
                            children: [
                              Icon(
                                Icons.list_alt,
                                size: 70,
                                color: Colors.lightBlue,
                              ),
                              Text(
                                "Product List",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList()));
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
