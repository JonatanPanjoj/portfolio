import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class PresentationInfoSection extends StatelessWidget {
  const PresentationInfoSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 100.0);
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.5,
              child: Padding(
                padding: const EdgeInsets.only(right:25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    CustomGradientText(
                      "hello_im_jonatan".tr(),
                      style: titleStyle,
                    ),
                    Text(
                      'mobile_&_web_developer'.tr(),
                      style: titleStyle,
                    ),
                    Text(
                      'ready_to_bring_your_digital_dreams_to_life'.tr(),
                      style: titleStyle,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "presentation_description".tr(),
                      style: TextStyle(fontSize: size.width * 0.013),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        CustomGradientButton(
                          label: 'get_in_touch'.tr(),
                          onPressed: () {
                            launchUrl(Uri.parse('https://www.linkedin.com/in/jonatan-ixpanel/'));
                          },
                          verticalPadding: size.width * 0.0117,
                          horizontalPadding: size.width * 0.018,
                          fontSize: size.width * 0.012,
                        ),
                        const SizedBox(width: 30),
                        CustomFilledButton(
                          variant: ButtonVariant.bordered,
                          verticalPadding: size.width * 0.007,
                          horizontalPadding: size.width * 0.012,
                          label: 'projects'.tr().toUpperCase(),
                          onPressed: () {
                            launchUrl(Uri.parse('https://github.com/JonatanPanjoj'));
                          },
                          fontSize: size.width * 0.012,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                'assets/img/joix-photo.jpg',
                width: 400,
                height: 700,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
