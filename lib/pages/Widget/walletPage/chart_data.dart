import 'package:flutter/material.dart';

import '../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key key,
    @required this.title,
    @required this.amountcrypto,
    @required this.numcrypto,
  }) : super(key: key);

  final String title, amountcrypto, numcrypto;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numcrypto Unités",
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: primaryColor,),
                  ),
                ],
              ),
            ),
          ),
          Text(amountcrypto)
        ],
      ),
    );
  }
}
