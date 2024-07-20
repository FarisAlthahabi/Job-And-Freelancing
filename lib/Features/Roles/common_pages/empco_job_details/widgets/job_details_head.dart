import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDetailsHead extends StatelessWidget {
  const JobDetailsHead({
    super.key,
    this.onAddToFavoriteTap,
    this.onEdit,
    this.onDelete,
  });

  final VoidCallback? onAddToFavoriteTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const SizedBox(
          width: 45,
        ),
        title: Text(
          'Ui Ux Designer',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Color.fromRGBO(29, 91, 164, 1),
                fontSize: 20.64,
                fontWeight: FontWeight.w700),
          ),
          textAlign: TextAlign.center,
        ),
        trailing: onAddToFavoriteTap != null
            ? InkWell(
                onTap: onAddToFavoriteTap,
                child: Icon(
                  Icons.bookmark_outline,
                  size: 40,
                  color: black,
                ))
            : SizedBox(
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: onEdit,
                      child: const Icon(Icons.edit_outlined)),
                  InkWell(
                      onTap: onDelete,
                      child: const Icon(Icons.delete_outline_outlined)),
                ],
              ),
            ));
  }
}
