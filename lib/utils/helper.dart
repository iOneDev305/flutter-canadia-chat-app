
import 'package:flutter/material.dart';


Widget futureText(Future<String?> future, TextStyle style,
    {String fallback = 'Loading...'}) {
  return FutureBuilder<String?>(
    future: future,
    builder: (context, snapshot) => Text(
      snapshot.data ?? fallback,
      style: style,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    ),
  );
}


// Widget futureImage(Future<String?> future, {double size = 48}) {
//   return FutureBuilder<String?>(
//     future: future,
//     builder: (context, snapshot) => CustomNetworkImage(
//       width: size,
//       height: size,
//       imageUrl: snapshot.data ?? '',
//       placeholderImage: 'assets/icons/placeholder_logo.png',
//       borderRadius: 48,
//     ),
//   );
// }