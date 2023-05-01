import 'package:dodz_portfolio/core/extensions/is_mobile.dart';
import 'package:flutter/material.dart';
import 'package:dodz_portfolio/core/styles/styles.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: const Offset(3, 3),
                blurRadius: 3,
                color: Colors.black12.withOpacity(0.3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 2,
                child: Placeholder(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dr. Ahmed Deraz',
                      textAlign: TextAlign.center,
                      style: Styles.titleTextStyle(context),
                    ),
                    SizedBox(
                      height: isMobile(context) ? 10 : 20,
                    ),
                    Text(
                      'Digital Artist',
                      textAlign: TextAlign.center,
                      style: Styles.subtitleTextStyle(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
