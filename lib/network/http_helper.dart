import 'dart:developer';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
  // http://api.openweathermap.org/data/2.5/weather?q=singapore&appid=3be596f7df7c1c2f4dfb70a6919f35f6

  // final String authority = 'api.openweathermap.org';
  // final String path = 'data/2.5/weather';

  final Map<String, String> routeToPathMap = {
    'login': '/login.php',
    'become_master': '/become_master_add.php',
    'platform': '/fetch_platform.php',
    'get_hourlyusage_for_day': '/api/ui/get_hourly_total_flow_for_day',
    'get_hourly_total_flow_for_day_with_offset':
        '/api/ui/get_hourly_total_flow_for_day_with_offset',
  };
  final String apiKey = '3be596f7df7c1c2f4dfb70a6919f35f6';

  final String authority =
      'inalltime-env.eba-dm7rbnqd.ap-south-1.elasticbeanstalk.com';
  final String tag = 'login';

  Future<int> login(String userId, String password) async {
    Map<String, String> parameters = {
      'user_id': userId,
      'password': password,
      'tag': 'login'
    };

    Uri uri = Uri.http(authority, routeToPathMap['login'] ?? '');
    http.Response result = await http.post(uri, body: parameters,  headers: {

      "Access-Control-Allow-Origin": "*"
    });
    Map<String, dynamic> user = jsonDecode(result.body);
    // inspect(user);
    Map<String, String> data = (result.headers);
    // inspect((data));
    return (user["status"]);
  }



  
}
