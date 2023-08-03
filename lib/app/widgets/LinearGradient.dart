import 'package:flutter/material.dart';

import '../constant/colors.dart';

LinearGradient LinearGradient_Blue_01() {
  return LinearGradient(
    colors: [
      Primary30,
      Primary50,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

LinearGradient LinearGradient_Blue_02() {
  return LinearGradient(
    colors: [
      Primary30.withOpacity(0.5),
      Primary50.withOpacity(0.5),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
