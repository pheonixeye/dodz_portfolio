import 'package:dodz_portfolio/core/components/background_widget.dart';
import 'package:dodz_portfolio/core/components/shadow_container.dart';
import 'package:dodz_portfolio/core/extensions/is_mobile.dart';
import 'package:flutter/material.dart';

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: ShadowContainer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile(context) ? 2 : 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return const Material(
                elevation: 20,
                borderOnForeground: true,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: GridTile(
                  footer: Text(
                    'Image Data Here',
                    textAlign: TextAlign.center,
                  ),
                  child: Icon(
                    Icons.image_not_supported,
                    size: 60,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
