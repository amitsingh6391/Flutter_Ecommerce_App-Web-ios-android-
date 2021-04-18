import 'package:assignment/infrastructure/shopdata/data_entity.dart';
import 'package:assignment/presentation/pages/widgets/sizechart_card.dart';
import 'package:assignment/presentation/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/product_details.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.shopData,
  }) : super(key: key);
  final Datum shopData;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height,
      maxWidth: MediaQuery.of(context).size.width,
    ));
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios_new_outlined),
        title: Text(
          shopData.name!,
          style: Apptheme(context).thinText.copyWith(
                fontSize: 15.sp,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: 20.h,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              size: 20.h,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag, size: 20.h),
            color: Colors.black26,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 15.h,
              ),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15.h,
                    bottom: 15.h,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 1.sw / 12),
                      Icon(
                        Icons.refresh_outlined,
                        size: 20.h,
                      ),
                      Text(
                        "   Easy 30 days return and exchange",
                        style: Apptheme(context).normalText.copyWith(
                              fontSize: 15.h,
                            ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizeChartCard(),
            ProductDetails(shopData: shopData)
          ],
        ),
      ),
    );
  }
}
