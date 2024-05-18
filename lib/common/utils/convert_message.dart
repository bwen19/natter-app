import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';

String convertMessageContent(MessageInfo message, bool isPublic) {
  final msg = switch (message.kind) {
    MessageKind.text => message.content,
    MessageKind.image => '[image]',
    MessageKind.file => '[file]',
  };
  return isPublic ? '${message.name}: $msg' : msg;
}
