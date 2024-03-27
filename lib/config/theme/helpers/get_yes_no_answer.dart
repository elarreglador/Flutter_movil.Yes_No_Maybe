import 'package:dio/dio.dart';
import 'package:ud5_yes_no_maybe/domain/entities/message.dart';
import 'package:ud5_yes_no_maybe/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer() async{
    final response = await _dio.get('https://yesno.wtf/api');

  //pasamos yesNoModel a notacion asdf.asdf en lugar de asdf['asdf']
  final yesNoModel = YesNoModel.fromJsonMap(response.data);

  return yesNoModel.toMessageEntity();
  }
}