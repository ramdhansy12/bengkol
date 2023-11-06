import 'package:bengkel_online/themes/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          bottom: defaultMargin,
          left: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Halo User',
                    style:
                        blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Container(
                margin: EdgeInsets.only(right: defaultMargin),
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/image_profile.png'),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget headingTitle1() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 25,
          right: defaultMargin,
        ),
        child: Text(
          'Tips dan Trik Merawat Kendaraan!',
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget listbengkel() {
      return Container();
    }

    return ListView(
      children: [
        header(),
        headingTitle1(),
        listbengkel(),
      ],
    );
  }
}
