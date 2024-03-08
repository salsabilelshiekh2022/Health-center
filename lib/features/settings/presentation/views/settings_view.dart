import 'package:flutter/material.dart';
import 'package:el_amal_app/generated/l10n.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/size_config.dart';
import 'widgets/account_setting_section.dart';
import 'widgets/general_setting_section.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          S.of(context).settings,
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: getScreenHeight(51),
          ),
          const AccountSettingsSection(),
          const Divider(
            thickness: 1,
            color: Color(0xFF144774),
          ),
          SizedBox(
            height: getScreenHeight(37),
          ),
          const GeneralSettingsSection()
        ],
      ),
    );
  }
}
