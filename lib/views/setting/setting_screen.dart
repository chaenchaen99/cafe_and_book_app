import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/common/widgets/snackbar.dart';
import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _topPadding(),
          _settingTitle('지원'),
          _sendFeedbackButton(context),
          _settingTitle('앱 정보'),
          _leaveRatingButton(),
        ],
      ),
    );
  }

  Widget _topPadding() {
    return const SliverToBoxAdapter(
      child: SizedBox(height: 40),
    );
  }

  Widget _settingTitle(String title) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 10.0, bottom: 10),
        child: MediumText(
          text: title,
          weight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _sendFeedbackButton(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                final Uri emailUri = Uri(
                  scheme: 'mailto',
                  path: 'chaenjung.99@gmail.com',
                  query:
                      'subject=${Uri.encodeComponent("Feedback")}&body=${Uri.encodeComponent("이곳에 피드백을 작성해주세요:) 감사합니다.")}',
                );

                if (await canLaunchUrl(emailUri)) {
                  await launchUrl(emailUri);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('이메일 앱이 설치되어 있지 않습니다. 이메일 앱을 설치한 후 다시 시도해주세요.'),
                    ),
                  );
                }
              },
              child: const SmallText13(text: '💌 피드백 보내기'),
            ),
            height10,
            const Divider(),
          ],
        ),
      ),
    );
  }

  Widget _leaveRatingButton() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                final Uri appStoreUri = Uri.parse(
                  'https://play.google.com/store/apps/details?id=com.example.cafe_and_book', // Replace with your app's actual Play Store URL
                );

                if (await canLaunchUrl(appStoreUri)) {
                  await launchUrl(appStoreUri);
                } else {
                  debugPrint('Could not launch app store');
                }
              },
              child: const SmallText13(text: '💌 앱 평점 남기기'),
            ),
            height10,
            const Divider(),
          ],
        ),
      ),
    );
  }
}
