import 'package:app/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app/core/design/show_msg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferencesView extends StatefulWidget {
  ReferencesView({super.key});

  @override
  State<ReferencesView> createState() => _ReferencesViewState();
}

class _ReferencesViewState extends State<ReferencesView> {


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            title: Text('مراجع',
                style: TextStyle(
                    fontFamily: 'title_font', fontWeight: FontWeight.w500)),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    appShowMsg('يمكن النقر علي الصورة للوصول الي الصفحة');
                  },
                  icon: Icon(Icons.info_outline))
            ]),
        body: ListView.separated(
            itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    //height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          referencesList[index],
                          style: TextStyle(
                              fontFamily: 'title_font',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        Spacer(),
                        InkWell(
                          child: SvgPicture.asset(
                            'assets/svg/facebook-svgrepo-com.svg',
                            width: 45.w,
                            height: 45.h,
                          ),
                          onTap: () async {
                          //  await EasyLauncher.url(url:(referencesUrl[index]));
                          },
                        )
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(height: 16),
            itemCount: referencesList.length),
      ),
    );
  }
}
