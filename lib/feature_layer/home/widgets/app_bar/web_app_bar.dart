import 'package:flutter/material.dart';
import 'package:udemy_clone/feature_layer/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text('Flutter'),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(width: 24),
          SizedBox(
              height: 38,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  side:  MaterialStateProperty.all<BorderSide>(
                    const BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                child: const Text('Fazer login'),
              )),
          const SizedBox(width: 8),
          SizedBox(
              height: 40,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: const Text('Cadastre-se'),
              ))
        ],
      ),
    );
  }
}
