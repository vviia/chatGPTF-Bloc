import 'package:fchatgpt/features/text_completion/data/model/text_completion_model.dart';

abstract class TextCompletionRepository {
  Future<TextCompletionModel> getTextCompletion(String query);
}
