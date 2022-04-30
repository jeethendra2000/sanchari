import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sanchari/constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var profileInfo = Expanded(
      child: Column(
        children: [
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage("assets/sanchari.jpeg"),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    child: Icon(LineAwesomeIcons.pen,
                        color: kDarkPrimaryColor,
                        size: ScreenUtil().setSp(kSpacingUnit.w * 1.5)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Text(
            'Pranav bharawaj',
            style: kTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 0.5),
          Text(
            'pranavbharadwaj2001@gmail.com',
            style: kCaptionTextStyle,
          ),
        ],
      ),
    );
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: kSpacingUnit.w * 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: kSpacingUnit.w * 3),
            Icon(LineAwesomeIcons.arrow_left,
                size: ScreenUtil().setSp(kSpacingUnit.w * 3)),
            profileInfo,
            Icon(LineAwesomeIcons.sun,
                size: ScreenUtil().setSp(kSpacingUnit.w * 3)),
            SizedBox(
              width: kSpacingUnit.w * 3,
            ),
          ],
        ),
        Expanded(
            child: ListView(
          children: [
            ProfileListItem(
              icon: LineAwesomeIcons.edit,
              text: 'Edit Profile',
            ),
            ProfileListItem(
              icon: LineAwesomeIcons.lock,
              text: 'Password Reset',
            ),
            ProfileListItem(
              icon: LineAwesomeIcons.question_circle,
              text: 'Help & Support',
            ),
            ProfileListItem(
              icon: LineAwesomeIcons.cog,
              text: 'Settings',
            ),
            ProfileListItem(
              icon: LineAwesomeIcons.user_plus,
              text: 'Invite a Friend',
            ),
            ProfileListItem(
              icon: LineAwesomeIcons.alternate_sign_out,
              text: 'Logout',
              hasNavigation: false,
            ),
          ],
        ))
      ],
    ));
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    key,
    required this.icon,
    required this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  // const ProfileListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit.w * 5.5,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 4,
      ).copyWith(
        bottom: kSpacingUnit.w * 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            this.icon,
            size: kSpacingUnit.w * 2.5,
          ),
          SizedBox(width: kSpacingUnit.w * 1.5),
          Text(
            this.text,
            style: kTitleTextStyle.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          if (this.hasNavigation)
            Icon(
              LineAwesomeIcons.angle_right,
              size: kSpacingUnit.w * 2.5,
            ),
        ],
      ),
    );
  }
}
