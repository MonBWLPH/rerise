import 'package:flutter/material.dart';

class HeaderServices extends StatelessWidget implements PreferredSizeWidget {
  const HeaderServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildBgHeader(),
          Positioned(
            bottom: 0,            
            child: Container(
              padding: const EdgeInsets.all(30.0),
              width: 400,
              height: 100,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Text(
                'Our Services',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
              
            ),
          ),
        ],
      ),
    );
  }

  ShaderMask _buildBgHeader() {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment
              .centerLeft, 
          end: Alignment
              .centerRight,
          colors: [
            Color.fromRGBO(19, 186, 184, 0.4),
            Color.fromRGBO(19, 186, 184, 0.4)
          ],
        ).createShader(bounds);
      },
      child: Image.asset(
        'assets/images/headerServices.png',height: 220,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
