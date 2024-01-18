import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  final padding = const EdgeInsets.symmetric(horizontal: 100.0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          CustomSliverSizedBox(height: 50),
          PresentationInfoSection(),
          CustomSliverSizedBox(height: 75),
          ProjectCardsSection(),
          CustomSliverSizedBox(height: 50),
          StatsItemsSection(),
          CustomSliverSizedBox(height: 50),
          UsedToolsSection(),
          CustomSliverSizedBox(height: 75),
          CuoteSection(),
          CustomSliverSizedBox(height: 50),
          FooterSection(),
        ],
      ),
    );
  }



}

