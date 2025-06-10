import 'constant/enum_type.dart';


String getIconUrl({required String path, required ImageType type}) {
  switch (type) {
    case ImageType.svg:
      return 'assets/icons/$path.svg';
    case ImageType.png:
      return 'assets/icons/$path.png';
    case ImageType.jpg:
      return 'assets/icons/$path.jpg';
    case ImageType.gif:
      return 'assets/icons/$path.gif';
  }
} 