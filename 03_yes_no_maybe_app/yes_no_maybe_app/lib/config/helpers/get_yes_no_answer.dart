import 'package:dio/dio.dart';
import 'package:yes_no_maybe_app/domain/entities/message.dart';
import 'package:yes_no_maybe_app/infrastructure/models/yes_no_model.dart';

class GetYesOrNoAnswer
{

  final _dio = Dio();
  Future<Message> getAnswer() async
  {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(response.data);
    return yesNoModel.toMessageEntity();

  }
}