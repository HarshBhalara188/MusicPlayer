import 'package:music/app_string_utils.dart';
import 'package:flutter/material.dart';
import 'package:music/Explor.dart';

class Abc extends StatefulWidget {
  const Abc({super.key});

  @override
  State<Abc> createState() => _DemoAppState();
}

class _DemoAppState extends State<Abc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('MusicCard')),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            buildProfileImage(),
            buildUserNameText(),
            buildDesignation(),
            buildFollowersAndFollowingRow(),
            buildBottomDescriptionText(),
            buildExploreButton(context),
          ]),
        ),
      ),
    );
  }

  Container buildExploreButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Row(
        children: [
          InkWell(
            child: const Text(
              'Explor',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Explor(),
                  ));
            },
          ),
          IconButton(
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Explor(),
                  ));

            },
            icon: Icon(Icons.arrow_right_alt,size: 30),
          ),
        ],
      ),
    );
  }

  Widget buildBottomDescriptionText() {
    return const Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: const Text(
        'Harry Styles is a British singer, songwriter, and actor known for his charismatic stage presence and fashion-forward style. Rising to fame as a member of the pop sensation One Direction, Styles has since pursued a successful solo career, showcasing his versatility and musical prowess. With a distinctive voice and a penchant for pushing boundaries.',
        style: TextStyle(fontSize: 14, fontFamily: 'poppins'),
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Row buildFollowersAndFollowingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildFollowersColumn(subTitle: "38.4m", title: AppStrinUtils.followers),
        buildFollowersColumn(subTitle: "357", title: AppStrinUtils.following),
        buildFollowersColumn(subTitle: "424", title: AppStrinUtils.posts),

        const SizedBox.shrink()
      ],
    );
  }

  Widget buildDesignation() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          Text(
            'Singer-songwriter',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              fontFamily: 'poppins',
            ),
          ),
          SizedBox(width: 6,),
          Icon(Icons.verified_sharp),
        ],
      ),
    );
  }

  Widget buildUserNameText() {
    return const Padding(
      padding: EdgeInsets.only(top: 30),
      child: Text(
        'Harry \nEdward Styles',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'poppins'),
      ),
    );
  }

  Container buildProfileImage() {
    return Container(
      padding: EdgeInsets.only(right: 30),
        alignment: Alignment.centerRight,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/imag.jpg',
            fit: BoxFit.fitHeight,
            height: 280,
            width: 180,
          ),
        ));
  }

  Column buildFollowersColumn(
      {required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.grey.withOpacity(0.5),
            fontSize: 18,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(1, 5, 0, 0),
          child: Text(
            subTitle,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
