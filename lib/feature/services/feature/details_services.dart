import 'package:flutter/material.dart';
import 'package:web_rise_consulting/feature/services/models/service.dart';
class DetailsServices extends StatelessWidget {
  const DetailsServices({super.key, required this.service});

  final OurService service;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width < 800 ? 28 : 240, 
                              right: MediaQuery.of(context).size.width < 800 ? 28 : 240, 
                              top: 50, bottom: 50),
      child: Column(
        children: [
          SizedBox(
            width: 1600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  service.title,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                const SizedBox(height: 20),
                Text(
                  service.intro,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                const SizedBox(height: 40),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: service.bullets.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Color.fromRGBO(19, 186, 184, 1),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: SizedBox(
                              width: double.infinity,
                              child: Text(
                                service.bullets[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary,
                                    ),
                                softWrap: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                 
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
