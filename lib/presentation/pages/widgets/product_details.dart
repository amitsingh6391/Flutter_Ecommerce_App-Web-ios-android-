import 'package:assignment/infrastructure/shopdata/data_entity.dart';
import 'package:assignment/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
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
    return Padding(
      padding: EdgeInsets.all(
        15.h,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Product Details",
                style: Apptheme(context).boldText.copyWith(
                      fontSize: 13.h,
                    )),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(shopData.longDesc!.details![0].productDetails!),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Text("Size & Fit ",
                  style: Apptheme(context).boldText.copyWith(
                        fontSize: 13.h,
                      )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(shopData.longDesc!.details![1].sizeFit!),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Text("Material & Care",
                  style: Apptheme(context).boldText.copyWith(
                        fontSize: 13.h,
                      )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(shopData.longDesc!.details![2].materialCare!),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Text("Style Note",
                  style: Apptheme(context).boldText.copyWith(
                        fontSize: 13.h,
                      )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(shopData.longDesc!.details![3].styleNote!),
            ),
          ],
        ),
      ),
    );
  }
}
