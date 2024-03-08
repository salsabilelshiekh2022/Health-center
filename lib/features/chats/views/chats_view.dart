import 'package:flutter/material.dart';

import '../../../core/database/cache/cache_helper.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../generated/l10n.dart';
import 'widgets/chats_section.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).chats,
          style: TextStyles.font20White400,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: getIt<CacheHelper>().getData(key: "lang") == 'en'
              ? const Icon(Icons.arrow_forward_ios_rounded)
              : const Icon(Icons.arrow_back_ios_outlined),
        ),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              ChatsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
