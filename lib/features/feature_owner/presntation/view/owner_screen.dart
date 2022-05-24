import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/core/app_size.dart';
import 'package:real_state/features/feature_chat/presntation/view/home_chat_screen.dart';
import 'package:real_state/features/feature_owner/presntation/widget/alert_dialog.dart';
import 'package:real_state/features/feature_owner/presntation/widget/alert_dialog_upload.dart';
import 'package:real_state/features/feature_owner/presntation/widget/card_camera_owner.dart';
import 'package:real_state/features/feature_owner/presntation/widget/card_details_owner.dart';
import 'package:real_state/features/feature_owner/presntation/widget/card_load.dart';
import 'package:real_state/features/feature_owner/presntation/widget/card_more_details_owner.dart';
import 'package:real_state/features/feature_owner/presntation/widget/card_properties.dart';
import 'package:real_state/features/feature_owner/presntation/widget/card_type.dart';
import 'package:real_state/features/feature_owner/presntation/widget/column_property_condition.dart';
import 'package:real_state/features/feature_owner/presntation/widget/row_add_details.dart';
import 'package:real_state/features/feature_owner/presntation/widget/textField_owner.dart';
import 'package:real_state/features/feature_place_details/presntation/view/place_details.dart';
import 'package:real_state/features/feature_search_property/presntation/view/search_property.dart';
import 'package:real_state/features/widget/custom_textfilled_app.dart';
import 'package:real_state/features/widget/custome_btn.dart';
import 'package:real_state/features/widget/custome_text.dart';

class OwnerScreen extends StatefulWidget {
  const OwnerScreen({Key? key}) : super(key: key);

  @override
  State<OwnerScreen> createState() => _OwnerScreenState();
}

class _OwnerScreenState extends State<OwnerScreen> {
  int _groupValue = -1;
  int _groupValue2 = -1;
  bool showSortList = false;
  bool isSelectedType1 = false;
  bool isSelectedType2 = false;
  bool isSelectedProperty1 = false;
  bool isSelectedProperty2 = false;
  bool isSelectedAddProperty1 = false;
  bool isSelectedAddProperty2 = false;
  bool isSelectedAddProperty3 = false;
  bool showFilter = false;
  String typeFilter = 'SELECT';

  var listImages = [
    'assets/images/place1.png',
    'assets/images/place2.jpg',
    'assets/images/place3.png',
    'assets/images/place4.png',
    'assets/images/place5.png'
  ];

  Future<bool> _onWillPop() async {
    return await showDialog(
          context: context,
          // barrierDismissible: true,
          builder: (context) => AlertDialogFun(),
        ) ??
        false;
  }

  Future<bool> _onWillPopMap() async {
    return await showDialog(
          context: context,
          // barrierDismissible: true,
          builder: (context) => AlertDialogUploadFun(
            title: 'UPLOAD MAP',
            typeImage1: 'UPLOAD GOOGLE MAP TYPE A',
            typeImage2: 'UPLOAD GOOGLE MAP TYPE B',
            typeImage3: 'UPLOAD GOOGLE MAP TYPE C',
          ),
        ) ??
        false;
  }

  Future<bool> _onWillPopBluePrint() async {
    return await showDialog(
      context: context,
      // barrierDismissible: true,
      builder: (context) => AlertDialogUploadFun(
        title: 'UPLOAD BLUE PRINT',
        typeImage1: 'UPLOAD BLUE PRINT TYPE A',
        typeImage2: 'UPLOAD BLUE PRINT TYPE B',
        typeImage3: 'UPLOAD BLUE PRINT TYPE C',
      ),
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(SCREEN_WIDTH, SCREEN_HIGHT),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 5.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchProperty()),
                              (route) => false);
                        },
                        child: Container(
                          height: 50.h,
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'assets/images/back.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Image.asset(
                        'assets/images/notifcation.png',
                        width: 30.w,
                        height: 30.h,
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/logoApp.png',
                        width: 80.w,
                        height: 80.h,
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/menu.png',
                        width: 30.w,
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                CustomeText(
                  title: 'OWNER HOME PAGE',
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.underline,
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30.w),
                    CircleAvatar(
                      radius: 45.r,
                      backgroundImage:
                          AssetImage('assets/images/person_user.png'),
                    ),
                    SizedBox(width: 15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomeText(
                          title: 'WILLIAM WALLAS',
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 5.h),
                        CustomeText(
                          title: '5214-521',
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.5.h,
                  height: 40.h,
                  indent: 30.w,
                  endIndent: 30.w,
                  color: Colors.black.withOpacity(0.7),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardType(
                      title: 'PROPERTIES',
                      image: 'assets/images/property.png',
                      color:
                          isSelectedType1 ? Colors.grey.shade400 : Colors.white,
                      textColor: isSelectedType1
                          ? Colors.white
                          : Colors.black.withOpacity(0.7),
                      pressCard: () {
                        setState(() {
                          if (isSelectedType1 == false) {
                            isSelectedType1 = true;
                            isSelectedType2 = false;
                          } else {
                            isSelectedType1 = false;
                          }
                        });
                      },
                    ),
                    SizedBox(width: 40.w),
                    CardType(
                      title: 'REMINDER',
                      image: 'assets/images/reminder.png',
                      color:
                          isSelectedType2 ? Colors.grey.shade400 : Colors.white,
                      textColor: isSelectedType2
                          ? Colors.white
                          : Colors.black.withOpacity(0.7),
                      pressCard: () {
                        setState(() {
                          if (isSelectedType2 == false) {
                            isSelectedType2 = true;
                            isSelectedType1 = false;
                          } else {
                            isSelectedType2 = false;
                          }
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                isSelectedType1 ? typeProperty() : SizedBox(),
                SizedBox(height: 20.h),
                isSelectedProperty1 ? addNewProperty() : SizedBox(),
                isSelectedProperty2 ? PropertyViewList() : SizedBox(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget typeProperty() {
    return Column(
      children: [
        Row(
          children: [
            CustomeText(
              title: 'PROPERTIES',
              color: Colors.black.withOpacity(0.6),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardProperties(
              title: 'ADD NEW',
              image: 'assets/images/add_new_owner.png',
              color: isSelectedProperty1 ? Colors.grey.shade400 : Colors.white,
              textColor: isSelectedProperty1
                  ? Colors.white
                  : Colors.black.withOpacity(0.7),
              pressCard: () {
                setState(() {
                  if (isSelectedProperty1 == false) {
                    isSelectedProperty1 = true;
                    isSelectedProperty2 = false;
                  } else {
                    isSelectedProperty1 = false;
                  }
                });
              },
            ),
            SizedBox(width: 60.w),
            CardProperties(
              title: 'VIEW LIST',
              image: 'assets/images/list_owner.png',
              color: isSelectedProperty2 ? Colors.grey.shade400 : Colors.white,
              textColor: isSelectedProperty2
                  ? Colors.white
                  : Colors.black.withOpacity(0.7),
              pressCard: () {
                setState(() {
                  if (isSelectedProperty2 == false) {
                    isSelectedProperty2 = true;
                    isSelectedProperty1 = false;
                  } else {
                    isSelectedProperty2 = false;
                  }
                });
              },
            ),
          ],
        )
      ],
    );
  }

  Widget addNewProperty() {
    return Column(
      children: [
        CustomeText(
          title: 'NEW PROPERTY ADDITION',
          color: Colors.black.withOpacity(0.7),
          fontSize: 18.sp,
          fontWeight: FontWeight.w900,
          decoration: TextDecoration.underline,
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            CustomeText(
              title: 'SELECT THE OF PROPERTY',
              color: Colors.black.withOpacity(0.7),
              fontSize: 16.sp,
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            CardType(
              title: 'Apartment',
              image: 'assets/images/house2_owner.png',
              widthImage: 70,
              heightImage: 70,
              color:
                  isSelectedAddProperty1 ? Colors.grey.shade400 : Colors.white,
              textColor: isSelectedAddProperty1
                  ? Colors.white
                  : Colors.black.withOpacity(0.7),
              pressCard: () {
                setState(() {
                  if (isSelectedAddProperty1 == false) {
                    isSelectedAddProperty1 = true;
                    isSelectedAddProperty2 = false;
                    isSelectedAddProperty3 = false;
                  } else {
                    isSelectedAddProperty1 = false;
                  }
                });
              },
            ),
            CardType(
              title: 'House',
              image: 'assets/images/house_owner.png',
              widthImage: 80,
              heightImage: 80,
              isChangeSize: true,
              color:
                  isSelectedAddProperty2 ? Colors.grey.shade400 : Colors.white,
              textColor: isSelectedAddProperty2
                  ? Colors.white
                  : Colors.black.withOpacity(0.7),
              pressCard: () {
                setState(() {
                  if (isSelectedAddProperty2 == false) {
                    isSelectedAddProperty1 = false;
                    isSelectedAddProperty2 = true;
                    isSelectedAddProperty3 = false;
                  } else {
                    isSelectedAddProperty2 = false;
                  }
                });
              },
            ),
            CardType(
              title: 'Villa',
              image: 'assets/images/house3_owner.png',
              widthImage: 70,
              heightImage: 70,
              color:
                  isSelectedAddProperty3 ? Colors.grey.shade400 : Colors.white,
              textColor: isSelectedAddProperty3
                  ? Colors.white
                  : Colors.black.withOpacity(0.7),
              pressCard: () {
                setState(() {
                  if (isSelectedAddProperty3 == false) {
                    isSelectedAddProperty1 = false;
                    isSelectedAddProperty2 = false;
                    isSelectedAddProperty3 = true;
                  } else {
                    isSelectedAddProperty3 = false;
                  }
                });
              },
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Column(
          children: [
            RowAddDetails(title: 'PROPERTY ADDRESS'),
            SizedBox(height: 10.h),
            RowAddDetails(
                title: 'PROPERTY BUDGET', textInputType: TextInputType.number),
            SizedBox(height: 10.h),
            RowAddDetails(
                title: 'PROPERTY TOTAL AREA',
                showSuffixIcon: true,
                textInputType: TextInputType.number),
            SizedBox(height: 10.h),
            RowAddDetails(
                title: 'PROPERTY LIVABLE AREA',
                showSuffixIcon: true,
                textInputType: TextInputType.number),
            SizedBox(height: 10.h),
            RowAddDetails(
                title: 'PROPERTY FLOOR NUMBER',
                textInputType: TextInputType.number),
            SizedBox(height: 10.h),
            RowAddDetails(
                title: 'PROPERTY ROOM NUMBER',
                textInputType: TextInputType.number),
            SizedBox(height: 10.h),
            RowAddDetails(
                title: 'PROPERTY BATHROOM NUMBER',
                textInputType: TextInputType.number),
            SizedBox(height: 10.h),
            RowAddDetails(
                title: 'PROPERTY KITCHEN NUMBER',
                textInputType: TextInputType.number),
          ],
        ),
        SizedBox(height: 25.h),
        Row(
          children: [
            ColumnPropertyCondition(
              title: 'PROPERTY CONDITION',
              details: 'LUXURY',
            ),
            ColumnPropertyCondition(
              title: 'CONSTRUCTION YEAR',
              details: '2022 - 2019',
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Row(
          children: [
            SizedBox(width: 30.w),
            CustomeText(
              title: 'PROPERTY DETAILS',
              color: Colors.black.withOpacity(0.6),
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  _myRadioButton(
                    title: "ELEVATOR",
                    image: 'assets/images/garden.png',
                    value: 0,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                  _myRadioButton(
                    title: "SWIMMING POOL",
                    image: 'assets/images/garden.png',
                    value: 1,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                  _myRadioButton(
                    title: "GARAGE",
                    image: 'assets/images/garden.png',
                    value: 2,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                children: [
                  _myRadioButton(
                    title: "GARDEN",
                    image: 'assets/images/garden.png',
                    value: 3,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                  _myRadioButton(
                    title: "TERRACE",
                    image: 'assets/images/garden.png',
                    value: 4,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                  _myRadioButton(
                    title: "FENCED YARD",
                    image: 'assets/images/garden.png',
                    value: 5,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CardLoad(title: 'UPLOAD PROPERTY PHOTOS'),
                CardLoad(
                  title: 'UPLOAD PROPERTY BL. PRINT',
                  pressCard: _onWillPopBluePrint,
                ),
                CardLoad(
                  title: 'UPLOAD PROPERTY MAP',
                  pressCard: _onWillPopMap,
                ),
              ],
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CardLoad(title: 'UPLOAD PROPERTY VIDEOS'),
                CardLoad(title: 'UPLOAD PROPERTY DETAILS'),
                CardLoad(title: 'UPLOAD PROPERTY CONTRACT'),
              ],
            ),
          ],
        ),
        SizedBox(height: 25.h),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/backBtn.png'),
                  fit: BoxFit.fill),
            ),
            child: CustomeText(
              title: 'CONFIRM  ',
              color: Colors.white,
              fontSize: 20.sp,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 25.h),
      ],
    );
  }

  Widget PropertyViewList() {
    return Stack(
      children: [
        Column(
          children: [
            CustomeText(
              title: 'PROPERTY VIEW LIST',
              color: Colors.black.withOpacity(0.7),
              fontSize: 18.sp,
              fontWeight: FontWeight.w900,
              decoration: TextDecoration.underline,
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (showFilter == false) {
                        showFilter = true;
                      } else {
                        showFilter = false;
                      }
                    });
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      color: Color(0xff6EB3D0),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        CustomeText(
                          title: 'FILTER',
                          color: Colors.white,
                          fontSize: 16.sp,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: 15.w),
                        Image.asset(
                          'assets/images/filter.png',
                          width: 25.w,
                          height: 25.h,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (showSortList == false) {
                        showSortList = true;
                      } else {
                        showSortList = false;
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/sort.png',
                        width: 15.w,
                        height: 15.h,
                        color: Colors.grey.shade700,
                      ),
                      SizedBox(width: 2.w),
                      CustomeText(
                        title: 'SORT',
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 16.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            showFilter ? SizedBox(height: 10.h) : SizedBox(),
            showFilter
                ? Card(
                    elevation: 5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _myRadioButton(
                              title: 'CITY',
                              value: 0,
                              isSelected: true,
                              fontSize: 16,
                              fontColor: Colors.black,
                              onChanged: (newValue) {
                                setState(() {
                                  _groupValue = newValue;
                                  typeFilter = 'SELECT CITY';
                                });
                              },
                            ),
                            _myRadioButton(
                              title: 'STATUS',
                              value: 1,
                              isSelected: true,
                              fontSize: 16,
                              fontColor: Colors.black,
                              onChanged: (newValue) {
                                setState(() {
                                  _groupValue = newValue;
                                  typeFilter = 'SELECT STATUS';
                                });
                              },
                            ),
                            _myRadioButton(
                              title: 'TYPE',
                              value: 2,
                              isSelected: true,
                              fontSize: 16,
                              fontColor: Colors.black,
                              onChanged: (newValue) {
                                setState(() {
                                  _groupValue = newValue;
                                  typeFilter = 'SELECT TYPE';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.h, horizontal: 15.w),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/arrowDown.png',
                                      width: 15.w,
                                      height: 15.h,
                                    ),
                                    SizedBox(width: 25.w),
                                    CustomeText(
                                      title: typeFilter,
                                      color: Colors.grey.shade500,
                                      fontSize: 20.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              children: [
                                CustomeBtn(
                                  title: 'APPLY',
                                  btnColor: Colors.grey.shade800,
                                  pressBtn: () {},
                                ),
                                SizedBox(height: 5.h),
                                CustomeBtn(
                                  title: 'CANCEL',
                                  btnColor: Colors.grey,
                                  pressBtn: () {
                                    setState(() {
                                      _groupValue = -1;
                                      typeFilter = 'SELECT';
                                      showFilter = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                          ],
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
                  )
                : SizedBox(),
            SizedBox(height: 20.h),
            SizedBox(
              height: 500.h,
              child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsetsDirectional.only(bottom: 20.h),
                itemBuilder: (context, index) {
                  String listImage = listImages.elementAt(index);
                  return Column(
                    children: [
                      Card(
                        elevation: 10,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  listImage,
                                  width: double.infinity,
                                  isAntiAlias: true,
                                ),
                                Positioned(
                                  bottom: 15.h,
                                  left: 10.w,
                                  child: SizedBox(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      // crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        CardCameraOwner(
                                            image: 'assets/images/camera.png',
                                            title: '8'),
                                        CardCameraOwner(
                                            image: 'assets/images/video.png',
                                            title: '3'),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 8.h),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CardMoreDetailsOwner(
                                          image: 'assets/images/sold_owner.png',
                                          title: 'SOLD',
                                        ),
                                        CardMoreDetailsOwner(
                                          image:
                                              'assets/images/favorite_owner.png',
                                          title: 'LIKE(125)',
                                        ),
                                        CardMoreDetailsOwner(
                                          image: 'assets/images/show_owner.png',
                                          title: 'SEEN(250)',
                                        ),
                                        CardMoreDetailsOwner(
                                          image: 'assets/images/edit_owner.png',
                                          title: 'EDIT',
                                        ),
                                        CardMoreDetailsOwner(
                                          image: 'assets/images/chat_owner.png',
                                          title: 'CHAT',
                                          showNum: true,
                                          pressCard: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomeChatScreen()));
                                          },
                                        ),
                                        CardMoreDetailsOwner(
                                          pressCard: _onWillPop,
                                          image:
                                              'assets/images/documents_owner.png',
                                          title: 'DOCUMENTS',
                                        ),
                                        SizedBox(width: 5.w),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CardDetailsOwner(
                                      image: 'assets/images/bath.png',
                                      title: '2 Baths'),
                                  CardDetailsOwner(
                                      image: 'assets/images/bath.png',
                                      title: '4 Beds'),
                                  CardDetailsOwner(
                                      image: 'assets/images/bath.png',
                                      title: '4 Rooms'),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/location.png',
                                    width: 25.w,
                                    height: 25.h,
                                  ),
                                  SizedBox(width: 10.w),
                                  CustomeText(
                                    title: 'Central park, RAFAH, GAZA',
                                    color: Colors.black.withOpacity(0.4),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff6EB3D0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.w),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PlaceDetails()));
                                    },
                                    child: CustomeText(
                                      title: 'Details ...',
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h)
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        showSortList
            ? Positioned(right: 5.w, top: 60.h, child: CardListSort())
            : SizedBox(),
      ],
    );
  }

  Widget _myRadioButton(
      {required String title,
      String? image,
      required int value,
      double fontSize = 12,
      Color fontColor = Colors.grey,
      bool isSelected = false,
      required ValueChanged? onChanged}) {
    return SizedBox(
      width: isSelected ? 120.w : 200.w,
      child: RadioListTile(
        contentPadding: EdgeInsetsDirectional.zero,
        value: value,
        groupValue: _groupValue,
        onChanged: onChanged,
        visualDensity: VisualDensity(horizontal: -4.0),
        dense: true,
        title: Row(
          children: [
            isSelected == false
                ? Image.asset(
                    image!,
                    width: 25.w,
                    height: 25.h,
                  )
                : SizedBox(),
            SizedBox(width: 5.w),
            CustomeText(
              title: title,
              fontSize: fontSize.sp,
              color: fontColor,
              fontWeight: FontWeight.w900,
            ),
          ],
        ),
      ),
    );
  }

  Widget CardListSort() {
    return SizedBox(
      width: 200.w,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10.h),
            _myRadioButton2(
              title: 'NEWEST',
              value: 0,
              onChanged: (newValue) => setState(() => _groupValue2 = newValue),
            ),
            _myRadioButton2(
              title: 'PRICE (LOW TO HIGH)',
              value: 1,
              onChanged: (newValue) => setState(() => _groupValue2 = newValue),
            ),
            _myRadioButton2(
              title: 'PRICE (HIGH TO LOW)',
              value: 2,
              onChanged: (newValue) => setState(() => _groupValue2 = newValue),
            ),
            _myRadioButton2(
              title: 'BEDS (LEAST)',
              value: 3,
              onChanged: (newValue) => setState(() => _groupValue2 = newValue),
            ),
            _myRadioButton2(
              title: 'BEDS (MOST)',
              value: 4,
              onChanged: (newValue) => setState(() => _groupValue2 = newValue),
            ),
            _myRadioButton2(
              title: 'AREA (LOW TO HIGH)',
              value: 5,
              onChanged: (newValue) => setState(() => _groupValue2 = newValue),
            ),
            _myRadioButton2(
              title: 'AREA (HIGH TO LOW)',
              value: 6,
              onChanged: (newValue) => setState(() => _groupValue2 = newValue),
            ),
            SizedBox(height: 10.h),
            CustomeBtn(
              pressBtn: () {},
              title: 'Apply',
              btnColor: Colors.grey.shade700,
              heightBtn: 38.h,
              widthBtn: 110.w,
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }

  Widget _myRadioButton2(
      {required String title,
      String? image,
      required int value,
      double fontSize = 12,
      Color fontColor = Colors.grey,
      bool isSelected = true,
      required ValueChanged? onChanged}) {
    return SizedBox(
      height: 35.h,
      child: RadioListTile(
        contentPadding: EdgeInsetsDirectional.zero,
        value: value,
        groupValue: _groupValue2,
        onChanged: onChanged,
        visualDensity: VisualDensity(horizontal: -4.0),
        dense: true,
        title: Row(
          children: [
            isSelected == false
                ? Image.asset(
                    image!,
                    width: 25.w,
                    height: 25.h,
                  )
                : SizedBox(),
            CustomeText(
              title: title,
              fontSize: fontSize.sp,
              color: fontColor,
              fontWeight: FontWeight.w900,
            ),
          ],
        ),
      ),
    );
  }
}
