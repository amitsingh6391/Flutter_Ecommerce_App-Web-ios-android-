import 'package:assignment/application/shopdata/shopdata_bloc.dart';
import 'package:assignment/infrastructure/shopdata/data_entity.dart';
import 'package:assignment/injection.dart';
import 'package:assignment/presentation/core/empty.dart';
import 'package:assignment/presentation/core/failure.dart';
import 'package:assignment/presentation/core/loading.dart';
import 'package:assignment/presentation/pages/widgets/shirtBox.dart';

import 'package:assignment/presentation/theme/theme.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height,
      maxWidth: MediaQuery.of(context).size.width,
    ));
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        title: Text(
          "US POLO TAILORED FIT..",
          style: Apptheme(context).thinText.copyWith(
                fontSize: 15.sp,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 1.sh / 10,
          width: 1.sw,
          child: Padding(
            padding: EdgeInsets.only(
              left: 1.sw / 8,
              right: 1.sw / 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.sort,
                  ),
                ),
                Text("   SORT"),
                SizedBox(width: 1.sw < 450 ? 1.sw / 6 : 1.sw / 4),
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.bolt,
                    )),
                Text(
                  "   FILTER",
                ),
              ],
            ),
          ),
        ),
      ),
      body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (conetxt) => getIt<ShopdataBloc>()
                ..add(
                  const ShopdataEvent.watchAllProducts(),
                ),
            ),
          ],
          child: BlocBuilder<ShopdataBloc, ShopdataState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Loading(),
                loadInProgress: (_) => Loading(),
                loadSuccess: (state) {
                  return SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 20.h,
                            right: 10.h,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "FIT LINEN SHIRTS ",
                                  style: Apptheme(context).normalText.copyWith(
                                        fontSize: 17.h,
                                      ),
                                ),
                              ),
                              //  Expanded(child: SizedBox()),
                              Expanded(
                                child: Text(
                                  "+177 items ",
                                  style: Apptheme(context).thinText.copyWith(
                                        fontSize: 15.h,
                                        color: Colors.redAccent,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GridView.builder(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemCount: state.shopdata.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1.sw > 450 ? 3 : 2,
                              childAspectRatio: 1.sw > 450
                                  ? MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height / .65)
                                  : MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height /
                                          0.93),
                            ),
                            itemBuilder: (context, index) {
                              final Datum shopData = state.shopdata[index];

                              return ShirtBox(shopData: shopData);
                            })
                      ],
                    ),
                  );
                },
                loadFailure: (_) => Failure(),
                empty: (_) => Empty(),
              );
            },
          )),
    );
  }
}
