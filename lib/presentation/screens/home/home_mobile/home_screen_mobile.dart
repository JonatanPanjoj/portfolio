import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class HomeScreenMobile extends StatelessWidget {

  final EdgeInsets?  padding;
  
  const HomeScreenMobile({super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    final scaffolKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffolKey,
      drawer: CustomSideMenu(scaffoldkey: scaffolKey,),
      body: CustomScrollView(
        slivers: [
          const SliverAppBarMobile(),
          const PresentationMobileSection(),
          const CustomSliverSizedBox(height: 50),
          const ProjectItemsMobileSection(),
          const CustomSliverSizedBox(height: 50),
          const StatsItemsMobileSection(),
          const CustomSliverSizedBox(height: 50),
          const UsedToolsMobileSection(),
          const CustomSliverSizedBox(height: 50),
          CuoteSection(
            fontSize: 35,
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 25),
          ),
          const CustomSliverSizedBox(height: 50),
          const FooterSection(isMobile: true,)
        ],
      ),
    );
  }
}
