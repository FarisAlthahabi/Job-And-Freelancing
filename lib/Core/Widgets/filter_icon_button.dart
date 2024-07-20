import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterIconButton extends StatelessWidget {
  final VoidCallback onTap;
  const FilterIconButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        'lib/Core/Resources/assets/SVG/filter.svg',
      ),
    );
  }
}
