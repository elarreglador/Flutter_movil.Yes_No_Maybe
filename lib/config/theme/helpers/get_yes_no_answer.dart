import 'package:dio/dio.dart';
import 'package:ud5_yes_no_maybe/domain/entities/message.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer() async{
    final response = await _dio.get('https://yesno.wtf/api');
    throw UnimplementedError();
  }
}