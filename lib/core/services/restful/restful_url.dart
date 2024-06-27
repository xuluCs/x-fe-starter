class RestfulUrl {
  RestfulUrl._();
  static const String companySecret = String.fromEnvironment("COMPANY_SECRET");
  static const String companyDetail = String.fromEnvironment("COMPANY_DETAIL",
      defaultValue: 'https://api.xulu.co.id/get_company_detail');

  static const String signIn = '/sign_in';
  static const String signOut = '/sign_out';
  static const String forgotPassword = '/forgot_password';
  static const String changePassword = '/change_password';
  static const String notification = '/get_notification';
  static const String notificationStatus = '/notification/status';
  static const String notificationClearAll = '/notification/clear_all';
  static const String userNotificationBehaviour = '/user/notification_behaviour';
  static const String searchOption = '/web/menu/get_search_option';
  static const String dynamicMenu = '/web/menu/dynamic_menu';
  static const String dynamicLookUp = '/web/menu/dynamic_lookup';
  static const String dynamicPost = '/web/menu/post_dynamic_menu';
  static const String postMediaV2 = '/web/menu/post_media_v2';
  static const String deleteMedia = '/web/menu/delete_media';
  static const String dialog = '/web/menu/dialog';
  static const String reportMenu = '/web/reports/report';

  //-------------------------------- App Meeting --------------------------------------//
  static const String meetingConference = '/web/conferences/conference';

  //-------------------------------- App Authorization --------------------------------------//
  static const String authorization = '/web/menu/authorization';

  //-------------------------------- App Kanban --------------------------------------//
  static const String updateKanban = '/web/menu/update_kanban_card';

  //-------------------------------- App Utils --------------------------------------//
  static const String languageData = '/web/get_language';
  static const String intlData = '/web/get_intl';
  static const String themeData = '/web/get_themes';
  static const String eulaData = '/web/eula';
}
