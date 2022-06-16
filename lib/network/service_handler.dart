import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:furniture_ui/network/services.dart';

final Services _services = Services();
class ServiceHandler{

  reviewRatings(rating,comments,consultant_id,user_id)async{
    var json = {'tag': 'ratings', 'rating': '$rating','comments':'$comments',
      'consultant_id':'$consultant_id','user_id':'$user_id'};
    print('this is json request : $json');

    var res = await _services.add_rating(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  allStarQuestion(consultant_id)async{
    var json = {'tag': 'all_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.questionRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  fiveStarQuestion(consultant_id)async{
    var json = {'tag': 'five_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.questionRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  fourStarQuestion(consultant_id)async{
    var json = {'tag': 'four_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.questionRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  threeStarQuestion(consultant_id)async{
    var json = {'tag': 'three_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.questionRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  twoStarQuestion(consultant_id)async{
    var json = {'tag': 'two_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.questionRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  oneStarQuestion(consultant_id)async{
    var json = {'tag': 'one_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.questionRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }



  allStarChat(consultant_id)async{
    var json = {'tag': 'all_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.chatRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  fiveStarChat(consultant_id)async{
    var json = {'tag': 'five_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.chatRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  fourStarChat(consultant_id)async{
    var json = {'tag': 'four_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.chatRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  threeStarChat(consultant_id)async{
    var json = {'tag': 'three_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.chatRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  twoStarChat(consultant_id)async{
    var json = {'tag': 'two_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.chatRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  oneStarChat(consultant_id)async{
    var json = {'tag': 'one_star','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.chatRatingsView(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }






  become_master(name,phone_no,email,otp)async{
    var json = {'tag': 'become_master', 'name': '$name','phone_no':'$phone_no',
      'email':'$email','otp':'$otp'};
    print('this is json request : $json');

    var res = await _services.become_master(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  platform_url(platform,url,user_id,otp)async{
    var json = {'tag': 'platform_url', 'platform': '$platform','url':'$url',
      'user_id':'$user_id'};
    print('this is json request : $json');

    var res = await _services.platform_url(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  fetchPlatform()async{
    var json = {'tag': 'platform'};
    print('this is json request : $json');

    var res = await _services.fetch_platform(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  addWallet(user_id,wallet_amt)async{
    var json = {'tag': 'wallet_recharge','user_id':'$user_id','wallet_amt':'$wallet_amt'};
    print('this is json request : $json');

    var res = await _services.add_wallet(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  withdraw(user_id,withdraw_amt)async{
    var json = {'tag': 'withdraw','user_id':'$user_id','wallet_amt':'$withdraw_amt'};
    print('this is json request : $json');

    var res = await _services.withdraw(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  reportUser(user_id,consultant_id)async{
    var json = {'tag': 'report','user_id':'$user_id','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.reportUser(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }


  blockUser(user_id,consultant_id)async{
    var json = {'tag': 'report','user_id':'$user_id','consultant_id':'$consultant_id'};
    print('this is json request : $json');

    var res = await _services.blockUser(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  sendUserQuestions(user_id,user_name,consultant_id,consultant_name,question)async{
    var json = {'tag': 'send_questions','user_id':'$user_id','user_name':'$user_name','consultant_id':'$consultant_id',
      'consultant_name':'$consultant_name','question':'$question'};
    print('this is json request : $json');

    var res = await _services.user_questions(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  sendUserQuestionsPriority(user_id,user_name,consultant_id,consultant_name,question,amount)async{
    var json = {'tag': 'send_prioritise_question','user_id':'$user_id','user_name':'$user_name','consultant_id':'$consultant_id',
      'consultant_name':'$consultant_name','question':'$question','amount':'$amount'};
    print('this is json request : $json');

    var res = await _services.user_questions(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  consultantQuestionsPrice(tag,type,price,consultation_time,isApplied,offerPercentage,offerPrice,startDate,endDate,userId)async{
    var json = {'tag': '$tag','currecy_type':'$type','price':'$price',
      'consultation:_time':'$consultation_time','is_offer_applicable':'$isApplied','offer_percentage':'$offerPercentage',
      'offer_price':'$offerPrice','start_date':'$startDate','end_date':'$endDate','user_id':'$userId'};

    print('this is json request : $json');

    var res = await _services.chat_consultant_booking(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }
  consultantChatPrice(tag,type,price,consultation_time,isApplied,offerPercentage,offerPrice,startDate,endDate,userId)async{
    var json = {'tag': '$tag','currecy_type':'$type','price':'$price',
      'consultation:_time':'$consultation_time','is_offer_applicable':'$isApplied','offer_percentage':'$offerPercentage',
      'offer_price':'$offerPrice','start_date':'$startDate','end_date':'$endDate','user_id':'$userId'};

    print('this is json request : $json');

    var res = await _services.leave_question_price(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  bookAppointment(mop,booking_amt,preferredDate,timePeriod,timeHours,reason,place,isAnyone,description,agree,appointment_to,
      appointment_user_id,booker_user_id,duration,bookerId)async{
    var json = {'tag': 'book_appointment','mop':'$mop','booking_amt':'$booking_amt','preffered_date':'$preferredDate',
      'time_period':'$timePeriod','time_hours':'$timeHours','appointment_reason':'$reason','place':'$place',
      'is_anyone_with_you':'$isAnyone','description':'$description','agree':'$agree','appointment_to':'$appointment_to',
      'appointment_user_id':'$appointment_user_id','booker_user_id':'$booker_user_id','duration':'$duration',
      'booker_user_id':'$bookerId'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  timePeriod()async{
    var json = {'tag': 'time_periods'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  timeHours()async{
    var json = {'tag': 'time_hours'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  appointmentPlace()async{
    var json = {'tag': 'place'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  appointmentReason()async{
    var json = {'tag': 'reason'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  appointmentDuration()async{
    var json = {'tag': 'duration'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  bookEvent(pDate,timePeriod,timeHours,duration,booking_amt,place,city,state,pincode,landmark,link,people,timeID,
      isAnyone,description,include,exclude,agree,appointmentTo,appointment_userID,uid,map)async{
    var json = {'tag': 'events_appointment','preferred_date':'$pDate','time_period':'$timePeriod',
      'time_hours':'$timeHours', 'duration':'$duration','booking_amt':'$booking_amt','place':'$place',
      'city':'$city','state':'$state','pincode':'$pincode','landmark':'$landmark','google_map_link':'$link',
      'no_of_people':'$people','time_id':'$timeID','is_anyone_with_you':'$isAnyone','description':'$description',
      'include':'$include','exclude':'$exclude','agree':'$agree','appointment_to':'$appointmentTo',
      'appointment_user_id':'$appointment_userID','user_id':'$uid','map':'$map'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  addPreAppointment(title,image,desc,amt,appointTo,appoint_uid,mop,booked_uid,uid)async{
    var json = {'tag': 'add_predefined_appoinments','title':'$title','image':'$image','description':'$desc',
      'amount':'$amt','appointment_to':'$appointTo','appointment_user_id':'$appoint_uid','mop':'$mop',
      'booked_user_id':'$booked_uid','user_id':'$uid'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }

  bookAppointmentCharge(title,image,desc,amt,appointTo,appoint_uid,map,booked_uid,uid)async{
    var json = {'tag': 'add_predefined_appoinments','title':'$title','image':'$image','description':'$desc',
      'amount':'$amt','appointment_to':'$appointTo','appointment_user_id':'$appoint_uid','map':'$map',
      'booked_user_id':'$booked_uid','user_id':'$uid'};
    print('this is json request : $json');

    var res = await _services.book_appointment(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }

  }
  chatConsultantBooking(preffered_date,time_periods,time_hours,description,duration,amount,consultant_id,user_id)async{
    var json = {'tag': 'add_predefined_appoinments','preffered_date':'$preffered_date','time_periods':'$time_periods','time_hours':'$time_hours',
      'description':'$description','duration':'$duration','amount':'$amount','consultant_id':'$consultant_id',
      'user_id':'$user_id'};
    print('this is json request : $json');

    var res = await _services.chat_consultant_booking(json);
    print('this is response : $res');
    if (res["status"] == 1) {
      return res;
    }
    else {
      showToast(res['message']);
    }
  }


  showToast(msg){
    Fluttertoast.showToast(
        msg: '${msg}',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 4,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

}