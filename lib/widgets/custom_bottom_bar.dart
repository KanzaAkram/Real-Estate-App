import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgUserPrimary,
      activeIcon: ImageConstant.imgUserPrimary,
      type: BottomBarEnum.Userprimary,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgRewind,
      activeIcon: ImageConstant.imgRewind,
      type: BottomBarEnum.Rewind,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavoriteBlueGray80001,
      activeIcon: ImageConstant.imgFavoriteBlueGray80001,
      type: BottomBarEnum.Favoritebluegray80001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      type: BottomBarEnum.Lock,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 25.adaptSize,
              width: 25.adaptSize,
              color: appTheme.blueGray80001,
              radius: BorderRadius.vertical(
                bottom: Radius.circular(50.h),
              ),
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 34.v,
              width: 25.h,
              color: theme.colorScheme.primary,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Userprimary,
  Rewind,
  Favoritebluegray80001,
  Lock,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
