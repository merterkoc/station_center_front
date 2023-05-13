class HttpConstants {
  static const String BASE_URL = "base_url";
  static const String BASE_LOCAL_URL = "http://192.168.1.44:8081/api";
  static const Duration CONNECT_TIMEOUT = Duration(seconds: 30);
  static const Duration RECEIVE_TIMEOUT = Duration(seconds: 30);
  static const Map<String, String> HEADERS = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}
