import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/screens/home/home_web/home_screen_sections/email_section.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class HomeScreenWeb extends ConsumerWidget {
  const HomeScreenWeb({super.key});

  final padding = const EdgeInsets.symmetric(horizontal: 100.0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScrollController scrollController = ScrollController();
    final GlobalKey presentationKey = GlobalKey();
    final GlobalKey projectsKey = GlobalKey();
    final GlobalKey toolsKey = GlobalKey();
    final GlobalKey emailKey = GlobalKey();

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          CustomSliverAppBar(
            presentationKey: presentationKey,
            projectsKey: projectsKey,
            toolsKey: toolsKey,
            emailKey: emailKey,
          ),
          const CustomSliverSizedBox(height: 50),
          PresentationInfoSection(key: presentationKey),
          const CustomSliverSizedBox(height: 75),
          ProjectCardsSection(key: projectsKey),
          const CustomSliverSizedBox(height: 50),
          const StatsItemsSection(),
          const CustomSliverSizedBox(height: 50),
          UsedToolsSection(key: toolsKey),
          const CustomSliverSizedBox(height: 75),
          const CuoteSection(),
          const CustomSliverSizedBox(height: 50),
          EmailSection(key: emailKey,),
          const CustomSliverSizedBox(height: 50),
          const FooterSection(),
        ],
      ),
    );
  }
}
