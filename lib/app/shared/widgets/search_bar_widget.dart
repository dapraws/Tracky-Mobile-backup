import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      onTap: () {
        // Get.to(const ListAssetPage());
      },
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Container(
            padding: const EdgeInsets.only(left: 8),
            child: SvgPicture.asset(
              'assets/icons/ic_search.svg',
              width: 18,
              height: 18,
              fit: BoxFit.scaleDown,
            ),
          ),
          hintText: 'Search Asset',
          hintStyle: const TextStyle(
            color: Color(0xFF3B4446),
          ),
          filled: true,
          fillColor: const Color(0xFFD5DBDC),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          enabled: false,
        ),
      ),
    );
  }
}
