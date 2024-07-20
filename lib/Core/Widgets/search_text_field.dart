import 'package:empco/Core/Resources/Constants/Font_Weights.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ScrollController textFieldScrollController = ScrollController();

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    required this.screenWidth,
    required this.searchJobController,
  });

  final double screenWidth;
  final TextEditingController searchJobController;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
       width: 0.58 * widget.screenWidth,
       //height: 40,
      decoration: BoxDecoration(
         color: const Color.fromRGBO(222, 233, 246, 1),
          borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
       // maxLines: 1,
        style: const TextStyle(
          fontSize: 13,
          height: 2.75,
        ),
        // cursorHeight: 15,
        onTap: () {},
        onChanged: (value) {},
        controller: widget.searchJobController,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search_rounded),
            prefixIconColor: const Color.fromRGBO(140, 135, 135, 1),
            hintText: 'Find a job',
            hintStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                   // height: 2.75,
                    color: const Color.fromRGBO(140, 135, 135, 1),
                    fontSize: 8.91,
                    fontWeight: weightlevel7))),
      ),
    );
  }
}


