import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';

class HomeBrandItem extends StatelessWidget {
  const HomeBrandItem(this.image, this.onTap, {super.key});

  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            80,
          ),
          side: const BorderSide(
            color: greyColor,
          ),
        ),
        color: searchBarColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(
            80,
          ),
          onTap: () {},
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(
                8,
              ),
              child: Image(
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
