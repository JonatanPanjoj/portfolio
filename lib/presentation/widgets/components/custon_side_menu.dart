import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/providers/providers.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomSideMenu extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;

  const CustomSideMenu({super.key, required this.scaffoldkey});

  @override
  CustomSideMenuState createState() => CustomSideMenuState();
}

//Sería conveniente poder recibir el menu en una lista
class CustomSideMenuState extends ConsumerState<CustomSideMenu> {
  //Aquí podríamos usar un gestor de estado para saber cual esta seleccionada
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) async {
        setState(() {
          navDrawerIndex = value;
        });

        switch (navDrawerIndex) {
          case 0:
            await launchUrl(
              Uri.https('instagram.com', '/jonatan_panjoj/'),
            );
            break;
          case 1:
            ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            break;
          default:
        }

        // widget.scaffoldkey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(30, hasNotch ? 0 : 15, 16, 5),
          child: const Text('Menu', style: bold16,),
        ),
        const SizedBox(height: 50),
        NavigationDrawerDestination(
          icon: const Icon(Icons.phone_android),
          label: Text('lets_talk'.tr()),
        ),
        NavigationDrawerDestination(
          icon: ref.watch(themeNotifierProvider).isDarkMode
              ? const Icon(Icons.light_mode)
              : const Icon(Icons.dark_mode),
          label: Text('Theme'.tr()),
        ),
      ],
    );
  }
}
