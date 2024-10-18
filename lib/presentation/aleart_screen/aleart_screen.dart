import 'package:animate_do/animate_do.dart';
import 'package:helpcare/data/calls_list.dart';
import 'package:helpcare/presentation/search_screen/search_screen.dart';
import 'package:helpcare/widgets/spacing.dart';
import '../aleart_screen/widgets/listrectangleninetynine_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:helpcare/core/app_export.dart';
import 'package:helpcare/widgets/custom_icon_button.dart';

import '../notification_screen/notification_screen.dart';

class AleartScreen extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
               Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width,
                  margin: getMargin(
                    left: 24,
                    right: 24,
                    top: 20,
                    bottom: 20
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 4,
                          bottom: 5,
                        ),
                        child: Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CommonImageView(
                              svgPath: ImageConstant.appLogo,
                              height: getVerticalSize(
                                41.00,
                              ),
                              width: getHorizontalSize(
                                34.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                right: 8,
                                top: 13,
                                bottom: 9,
                              ),
                              child: Text(
                                "Covid 19".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                  
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'Gilroy-Medium',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                       Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomIconButton(isDark:isDark,
                            height: 50,
                            width: 50,
                            onTap: (){
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SearchScreen()),
  );
                            },
                            child: CommonImageView(
                              isDark: isDark,
                              svgPath: ImageConstant
                                  .imgSearchBluegray400,
                            ),
                          ),
                         HorizontalSpace(width: 16),
                          CustomIconButton(isDark:isDark,
                            height: 50,
                            width: 50,
                             onTap: (){
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>NotificationScreen()),
  );
                            },
                            margin: getMargin(
                              left: 0,
                            ),
                            child: CommonImageView(
                              isDark: isDark,
                              svgPath:
                                  ImageConstant.imgNotification,
                            ),
                          ),
                        ],
                      ),
                    
                   
                    ],
                  ),
                ),
              ),
             
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     
                     
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 4,
                          right: 24,
                        ),
                        child: Text(
                          "Emergency Alert",
                          overflow: TextOverflow.ellipsis,
                          textAlign:   TextAlign.start,
                          style: TextStyle(
                              
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'Gilroy-Medium',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          2.00,
                        ),
                        width: getHorizontalSize(
                          50.00,
                        ),
                        margin: getMargin(
                          left: 24,
                          top: 16,
                          right: 24,
                        ),
                        decoration: BoxDecoration(
                            
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: FadeInDown(
                          child: ListView.builder(
                            padding: getPadding(
                              left: 24,
                              top: 10,
                              right: 24,
                            ),
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: callsList.length,
                            itemBuilder: (context, index) {
                              return ListrectangleninetynineItemWidget(index:index);
                            },
                          ),
                        ),
                      ),
                     
                   
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
