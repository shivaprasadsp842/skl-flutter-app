import 'dart:convert';
import 'package:http/http.dart';

final Map<String, String> headers = {"Access-Control-Allow-Origin": "*"};
final String url ='http://inalltime.skltechnologies.com/api/';
final String imageUrl ='http://inalltime.skltechnologies.com/api/images/';

class Services{

  signup(request) async{

    print('this is the request sending for signup : $request');
    Response response = await post(Uri.parse('${url}login.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  login(request) async{

    print('this is the request sending for login : $request');
    Response response = await post(Uri.parse('${url}login.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  search_master(request) async{

    print('this is the request sending for search_master : $request');
    Response response = await post(Uri.parse('${url}search_master.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  add_rating(request) async{

    print('this is the request sending for add_rating : $request');
    Response response = await post(Uri.parse('${url}rating_add.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }
  questionRatingsView(request) async{

    print('this is the request sending for User : $request');
    Response response = await post(Uri.parse('${url}question_ratings_views.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }
  chatRatingsView(request) async{

    print('this is the request sending for User : $request');
    Response response = await post(Uri.parse('${url}chat_rating_views.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }
  bookRatingsView(request) async{

    print('this is the request sending for User : $request');
    Response response = await post(Uri.parse('${url}book_rating_views.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  become_master(request) async{

    print('this is the request sending for become_master : $request');
    Response response = await post(Uri.parse('${url}become_master_add.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  platform_url(request) async{

    print('this is the request sending for User : $request');
    Response response = await post(Uri.parse('${url}become_master_add.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }
  profile_update(request) async{

    print('this is the request sending for User : $request');
    Response response = await post(Uri.parse('${url}profile_update.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  reportUser(request) async{

    print('this is the request sending for User : $request');
    Response response = await post(Uri.parse('${url}report_user.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  blockUser(request) async{

    print('this is the request sending for User : $request');
    Response response = await post(Uri.parse('${url}user_block.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  fetch_platform(request) async{

    print('this is the request sending for fetch_platform : $request');
    Response response = await post(Uri.parse('${url}fetch_platform.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  add_wallet(request) async{

    print('this is the request sending for add_wallet : $request');
    Response response = await post(Uri.parse('${url}wallet_add.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  withdraw(request) async{

    print('this is the request sending for add_wallet : $request');
    Response response = await post(Uri.parse('${url}wallet_add.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  user_questions(request) async{

    print('this is the request sending for user_questions : $request');
    Response response = await post(Uri.parse('${url}user_questions.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  leave_question_price(request) async{

    print('this is the request sending for leave_question_price : $request');
    Response response = await post(Uri.parse('${url}leave_question_price.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  book_appointment(request) async{

    print('this is the request sending for book_appointment : $request');
    Response response = await post(Uri.parse('${url}book_appointment_add.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }
  consultantQuestionsPrice(request) async{

    print('this is the request sending for bookAppointment : $request');
    Response response = await post(Uri.parse('${url}book_appointment_add.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }
  chat_consultation(request) async{

    print('this is the request sending for chat_consultation : $request');
    Response response = await post(Uri.parse('${url}chat_consultation.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }

  book_consultant(request) async{

    print('this is the request sending for book_consultant : $request');
    Response response = await post(Uri.parse('${url}chat_consultant_booking.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;

  }



  chat_consultant_booking(request) async{

    print('this is the request sending for book_consultant : $request');
    Response response = await post(Uri.parse('${url}chat_consultant_booking.php'),headers: headers, body: request );
    var result =json.decode(response.body);
    return result;
  }



}