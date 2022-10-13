import 'package:flutter/material.dart';
import 'package:flutter_application_lab_evaluation_2_profile_ui/components/heading_info.dart';
import 'package:flutter_application_lab_evaluation_2_profile_ui/components/highlight_story.dart';
import 'package:flutter_application_lab_evaluation_2_profile_ui/components/posts.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.dancingScript(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const HeadingInfo(),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 80.0,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                scrollDirection: Axis.horizontal,
                children: List.generate(8, (int index) {
                  return const HighlightStory();
                }),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Posts(),
          ],
        ),
      ),
    );
  }
}
