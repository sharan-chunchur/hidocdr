import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hidocdr/widgets/features_footer_item.dart';

import 'circle_icon.dart';


class Footer extends StatelessWidget {
  final bool isWeb;

  const Footer({
    super.key,
    required this.isWeb,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 9, 23, 52),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: LayoutBuilder(builder: (context, constraints) {
        return constraints.maxWidth > 1232
            ? Row(
              children: const [
                Expanded(flex: 1, child: SocialMediaFooter()),
                Expanded(flex: 1, child: ContactFooter()),
                Expanded(
                  flex: 2,
                  child: FeaturesFooter(
                    isWeb: true,
                  ),
                )
              ],
            )
            : Column(
              children: const [
                SocialMediaFooter(),
                ContactFooter(),
                FeaturesFooter(
                  isWeb: false,
                ),
              ],
            );
      }),
    );
  }
}

class FeaturesFooter extends StatelessWidget {
  final bool isWeb;

  const FeaturesFooter({
    super.key,
    required this.isWeb,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'HIDOC DR FEATURES',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.white),
          ),
        ),
        !isWeb
            ? Column(
                children: [
                  Row(
                    children: const [
                      FeaturesFooterItem(
                        containerColor: Color.fromARGB(255, 251, 216, 214),
                        label: 'Social Network',
                        labelColor: Color.fromARGB(255, 243, 67, 54),
                        iconPath: 'assets/icons/people-arrows-solid.svg',
                      ),
                      FeaturesFooterItem(
                        containerColor: Color.fromARGB(255, 216, 242, 254),
                        label: 'Drugs',
                        labelColor: Color.fromARGB(255, 64, 195, 254),
                        iconPath: 'assets/icons/suitcase-medical-solid.svg',
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      FeaturesFooterItem(
                        containerColor: Color.fromARGB(255, 253, 237, 216),
                        label: 'Case Presentation',
                        labelColor: Color.fromARGB(255, 253, 170, 64),
                        iconPath: 'assets/icons/file-powerpoint-solid.svg',
                      ),
                      FeaturesFooterItem(
                        containerColor: Color.fromARGB(255, 216, 242, 254),
                        label: 'Webinars',
                        labelColor: Color.fromARGB(255, 64, 195, 254),
                        iconPath: 'assets/icons/person-chalkboard-solid.svg',
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      FeaturesFooterItem(
                        containerColor: Color.fromARGB(255, 217, 231, 254),
                        label: 'Quizzers',
                        labelColor: Color.fromARGB(255, 68, 137, 254),
                        iconPath: 'assets/icons/trophy-solid.svg',
                      ),
                      FeaturesFooterItem(
                        containerColor: Color.fromARGB(255, 218, 238, 219),
                        label: 'Calculators',
                        labelColor: Color.fromARGB(255, 76, 174, 80),
                        iconPath: 'assets/icons/person-chalkboard-solid.svg',
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      FeaturesFooterItem(
                        containerColor: Color.fromARGB(255, 218, 238, 219),
                        label: 'Articles',
                        labelColor: Color.fromARGB(255, 76, 174, 80),
                        iconPath: 'assets/icons/newspaper-solid.svg',
                      ),
                      FeaturesFooterItem(
                        containerColor: Color.fromARGB(255, 253, 237, 216),
                        label: 'Guidelines',
                        labelColor: Color.fromARGB(255, 253, 170, 64),
                        iconPath: 'assets/icons/file-solid.svg',
                      ),
                    ],
                  )
                ],
              )
            : Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              FeaturesFooterItem(
                                containerColor:
                                    Color.fromARGB(255, 251, 216, 214),
                                label: 'Social Network',
                                labelColor: Color.fromARGB(255, 243, 67, 54),
                                iconPath:
                                    'assets/icons/people-arrows-solid.svg',
                              ),
                              FeaturesFooterItem(
                                containerColor:
                                    Color.fromARGB(255, 216, 242, 254),
                                label: 'Drugs',
                                labelColor: Color.fromARGB(255, 64, 195, 254),
                                iconPath:
                                    'assets/icons/suitcase-medical-solid.svg',
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              FeaturesFooterItem(
                                containerColor:
                                    Color.fromARGB(255, 253, 237, 216),
                                label: 'Case Presentation',
                                labelColor: Color.fromARGB(255, 253, 170, 64),
                                iconPath:
                                    'assets/icons/file-powerpoint-solid.svg',
                              ),
                              FeaturesFooterItem(
                                containerColor:
                                    Color.fromARGB(255, 216, 242, 254),
                                label: 'Webinars',
                                labelColor: Color.fromARGB(255, 64, 195, 254),
                                iconPath:
                                    'assets/icons/person-chalkboard-solid.svg',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              FeaturesFooterItem(
                                containerColor:
                                    Color.fromARGB(255, 217, 231, 254),
                                label: 'Quizzers',
                                labelColor: Color.fromARGB(255, 68, 137, 254),
                                iconPath: 'assets/icons/trophy-solid.svg',
                              ),
                              FeaturesFooterItem(
                                containerColor:
                                    Color.fromARGB(255, 218, 238, 219),
                                label: 'Calculators',
                                labelColor: Color.fromARGB(255, 76, 174, 80),
                                iconPath:
                                    'assets/icons/person-chalkboard-solid.svg',
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              FeaturesFooterItem(
                                containerColor:
                                    Color.fromARGB(255, 218, 238, 219),
                                label: 'Articles',
                                labelColor: Color.fromARGB(255, 76, 174, 80),
                                iconPath: 'assets/icons/newspaper-solid.svg',
                              ),
                              FeaturesFooterItem(
                                containerColor:
                                    Color.fromARGB(255, 253, 237, 216),
                                label: 'Guidelines',
                                labelColor: Color.fromARGB(255, 253, 170, 64),
                                iconPath: 'assets/icons/file-solid.svg',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
            )
      ],
    );
  }
}

class ContactFooter extends StatelessWidget {
  const ContactFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'REACH US',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Please contact below details for any other information.',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email:',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: const Color.fromARGB(255, 0, 187, 212)),
              ),
              Text(
                'info@hidoc.co',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address:',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: const Color.fromARGB(255, 0, 187, 212)),
              ),
              Text(
                'Infedis Infotech LLP.Office 108, Suyog Center, Gultekdi, Pune- 411 037 Toll Free : 1800-202-5091',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}

class SocialMediaFooter extends StatelessWidget {
  const SocialMediaFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Image.asset(
            'assets/images/logo-desktop.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            '#1 Medical App for Doctors in India with 800K Monthly Users.',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CircleIcon(
                  borderColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/facebook-f.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CircleIcon(
                  borderColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/linkedin-in.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CircleIcon(
                  borderColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/instagram.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CircleIcon(
                  borderColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/youtube.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
