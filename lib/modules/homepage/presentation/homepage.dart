import 'package:dodz_portfolio/core/components/background_widget.dart';
import 'package:dodz_portfolio/core/components/dividers.dart';
import 'package:dodz_portfolio/core/extensions/is_mobile.dart';
import 'package:dodz_portfolio/modules/homepage/presentation/widgets/about.dart';
import 'package:dodz_portfolio/modules/homepage/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
        children: [
          const AvatarWidget(),
          isMobile(context)
              ? const ChorizontalDivider()
              : const CverticalDivider(),
          const AboutWidget(),
        ],
      ),
    );
  }
}
