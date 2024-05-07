

import 'package:web_rise_consulting/feature/services/models/service.dart';

class TranslateService {
  final List<OurService> en;
  final List<OurService> th;
  TranslateService({
    required this.en,
    required this.th,
  });





  TranslateService copyWith({
    List<OurService>? en,
    List<OurService>? th,
  }) {
    return TranslateService(
      en: en ?? this.en,
      th: th ?? this.th,
    );
  }


  @override
  String toString() => 'TranslateService(en: $en, th: $th)';

  @override
  bool operator ==(covariant TranslateService other) {
    if (identical(this, other)) return true;
  
    return 
      other.en == en &&
      other.th == th;
  }

  @override
  int get hashCode => en.hashCode ^ th.hashCode;
}
