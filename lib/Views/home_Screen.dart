import 'package:assessment/Controller/Provider/provider.dart';
import 'package:assessment/Model/post_Model.dart';
import 'package:assessment/Utils/Custom%20Widget/CustomAppBar.dart';
import 'package:assessment/Utils/Custom%20Widget/CustomCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<postProvider>(context, listen: false).fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    final post = Provider.of<postProvider>(context);
    return Scaffold(
        appBar: Customappbar(
          text: "Assesment",
          backgroundclr: Colors.blueGrey,
          centerTitle: true,
          icon: Icons.refresh,
          onpressed: () {
            post.refreshPost();
          },
        ),
        body: RefreshIndicator(
            onRefresh: () async {
              await post.refreshPost();
            },
            child: post.isloading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : post.errorMsg != null
                    ? Center(child: Text('Error: ${post.errorMsg}'))
                    : ListView.builder(
                        itemCount: post.posts.length,
                        itemBuilder: (context, index) {
                          PostModel postmodel = post.posts[index];
                          return Customcard(
                              id: postmodel.id,
                              title: postmodel.title,
                              userID: postmodel.userId,
                              subtitle: postmodel.body);
                        },
                      )));
  }
}
