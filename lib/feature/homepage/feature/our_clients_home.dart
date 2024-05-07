import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class OurClientsHome extends StatelessWidget implements PreferredSizeWidget {
  const OurClientsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            LocaleKeys.home_clients.tr(),
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const SizedBox(height: 10),
      
          Container(
            width: 800,
            child: Text(
              LocaleKeys.home_rise_consulting.tr(),
              textAlign: TextAlign.center, 
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
          ),
          const SizedBox(height: 30),
      
          Container(
            width: 600,
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                Image.asset('assets/image_clients_logo/Mask group-1.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-2.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-3.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-4.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-5.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-6.png',width: 100,),
                
                Image.asset('assets/image_clients_logo/Mask group-7.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-8.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-9.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-10.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-11.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-12.png',width: 100,),
                
                Image.asset('assets/image_clients_logo/Mask group-13.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-14.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-15.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-16.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-17.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-18.png',width: 100,),
                
                Image.asset('assets/image_clients_logo/Mask group-19.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-20.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-21.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-22.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-23.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-24.png',width: 100,),
                
                Image.asset('assets/image_clients_logo/Mask group-25.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-26.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-27.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-28.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-29.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-30.png',width: 100,),
                
                Image.asset('assets/image_clients_logo/Mask group-31.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-32.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-33.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-34.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-35.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-36.png',width: 100,),
                
                Image.asset('assets/image_clients_logo/Mask group-37.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-38.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-39.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-40.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-41.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-42.png',width: 100,),
                
                Image.asset('assets/image_clients_logo/Mask group-43.png',width: 100,),
                Image.asset('assets/image_clients_logo/Mask group-44.png',width: 100,),
                
                
               ],
            ),
          ),
        ],
        
      ),
    );
    
  }

 

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
