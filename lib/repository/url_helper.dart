class URLHelper {
  static const String base = "https://kwendatransport.com/";
  static const String REDIRECT_URL = base;
  static const String REDIRECT_SHARE_URL = "http://maps.google.com/maps?q=loc:";
  static const String APP_URL =
      "https://play.google.com/store/apps/details?id=";

  // without https
  static const int client_id = 12;
  static const String google_api_key =
      "AIzaSyCnYfqNhSXe-GGCgCpo7ZXNEITX_kfnwFE";
  // AIzaSyCnYfqNhSXe-GGCgCpo7ZXNEITX_kfnwFE

  static const String client_secret =
      "Vlpw7zY8wRTCxBBZtf0jEvSMaNa2WKYTpQBLub3f";
  static const String login = base + "oauth/token";
  static const String register = base + "api/user/signup";
  static const String UserProfile = base + "api/user/details";
  static const String CHECK_MAIL_ALREADY_REGISTERED = base + "api/user/verify";
  static const String UseProfileUpdate = base + "api/user/update/profile";
  static const String getUserProfileUrl = base + "api/user/details";
  static const String GET_SERVICE_LIST_API = base + "api/user/city/services";
  static const String REQUEST_STATUS_CHECK_API =
      base + "api/user/request/check";
  static const String ESTIMATED_FARE_DETAILS_API =
      base + "api/user/estimated/fare";
  static const String SEND_REQUEST_API = base + "api/user/send/request";
  static const String CANCEL_REQUEST_API = base + "api/user/cancel/request";
  static const String PAY_NOW_API = base + "api/user/payment";
  static const String RATE_PROVIDER_API = base + "api/user/rate/provider";
  static const String CARD_PAYMENT_LIST = base + "api/user/card";
  static const String ADD_CARD_TO_ACCOUNT_API = base + "api/user/card";
  static const String DELETE_CARD_FROM_ACCOUNT_API =
      base + "api/user/card/destory";
  static const String GET_HISTORY_API = base + "api/user/trips";
  static const String GET_HISTORY_DETAILS_API = base + "api/user/trip/details";
  static const String addCardUrl = base + "api/user/add/money";
  static const String addmoney = base + "api/user/add/money_new";
  static const String COUPON_LIST_API = base + "api/user/promocodes";
  static const String ADD_COUPON_API = base + "api/user/promocode/add";
  static const String CHANGE_PASSWORD_API = base + "api/user/change/password";
  static const String UPCOMING_TRIP_DETAILS =
      base + "api/user/upcoming/trip/details";
  static const String UPCOMING_TRIPS = base + "api/user/upcoming/trips";
  static const String GET_PROVIDERS_LIST_API = base + "api/user/show/providers";
  static const String FORGET_PASSWORD = base + "api/user/forgot/password";
  static const String RESET_PASSWORD = base + "api/user/reset/password";
  static const String FACEBOOK_LOGIN = base + "api/user/auth/facebook";
  static const String GOOGLE_LOGIN = base + "api/user/auth/google";
  static const String LOGOUT = base + "api/user/logout";
  static const String HELP = base + "api/user/help";
  static const String GET_WALLET_HISTORY = base + "api/user/wallet/passbook";
  static const String GET_COUPON_HISTORY = base + "api/user/promo/passbook";
  static const String EXTEND_TRIP = base + "api/user/update/request";
  static const String SAVE_LOCATION = base + "api/user/location";
  static const String CITIES = base + "api/user/city";
}
