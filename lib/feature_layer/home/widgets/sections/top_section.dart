import 'package:flutter/material.dart';
import 'package:udemy_clone/app/breakpoints.dart';
import 'package:udemy_clone/feature_layer/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                const AspectRatio(
                  aspectRatio: 3.4,
                  child: LogoImage(),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      width: 450,
                      child: const Item(),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                const SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: LogoImage(),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      width: 350,
                      child: const Item(),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        return const Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: LogoImage(),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Item(),
            )
          ],
        );
      },
    );
  }
}

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      fit: BoxFit.cover,
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aprenda Flutter no seu tempo',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Bora aprender Flutter com o professor Gean jr! Cursos por apenas R\$22,90. Qualidade garantida.',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 16),
        CustomSearchField(),
      ],
    );
  }
}
