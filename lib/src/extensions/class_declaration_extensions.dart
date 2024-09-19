import 'package:macros/macros.dart';

extension ClassDeclarationX on ClassDeclaration {
  Stream<FieldDeclaration> allFields(DeclarationPhaseIntrospector introspector) async* {
    for (var field in await introspector.fieldsOf(this)) {
      yield field;
    }
  }
}
