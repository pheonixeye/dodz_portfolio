import 'package:dodz_portfolio/core/components/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ShadowContainer(
          child: ListView(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.art_track),
                ),
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Inspirations'),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.art_track),
                ),
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('About'),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.art_track),
                ),
                title: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('LinkedIn'),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Link(
                    builder: (BuildContext context,
                        Future<void> Function()? followLink) {
                      return InkWell(
                        onTap: followLink,
                        child: const Text('@deraz'),
                      );
                    },
                    uri: Uri.dataFromString('https://linkedin.com'),
                  ),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.art_track),
                ),
                title: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Instagram'),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Link(
                    builder: (BuildContext context,
                        Future<void> Function()? followLink) {
                      return InkWell(
                        onTap: followLink,
                        child: const Text('@el_dodz'),
                      );
                    },
                    uri: Uri.dataFromString('https://instagram.com'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
