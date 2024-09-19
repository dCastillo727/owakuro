// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:macros/macros.dart';
import 'package:owakuro/src/extensions/class_declaration_extensions.dart';
import 'package:owakuro/src/utils/my_libraries.dart';

macro class ToString implements ClassDeclarationsMacro, ClassDefinitionMacro {
  const ToString();

  @override
  FutureOr<void> buildDeclarationsForClass(ClassDeclaration clazz, MemberDeclarationBuilder builder) async {
    builder.declareInType(DeclarationCode.fromParts([
      await builder.resolveIdentifier(MyLibraries.core.uri, 'String'),
      ' toString();',
    ]));
  }
  
  @override
  FutureOr<void> buildDefinitionForClass(ClassDeclaration clazz, TypeDefinitionBuilder builder) async {
    var methods = await builder.methodsOf(clazz);
    var toStringBuilder = await builder.buildMethod(
      methods.firstWhere((m) => m.identifier.name == 'toString').identifier,
    );

    List<RawCode> fieldExprs = [];
    await for (var field in clazz.allFields(builder)) {
      fieldExprs.add(RawCode.fromParts([
        '${field.identifier.name}: \${',
        field.identifier,
        '}',
      ]));
    }
    
    toStringBuilder.augment(FunctionBodyCode.fromParts([
      ' => """\${${clazz.identifier.name}}(',
      ...fieldExprs.joinAsCode(', '),
      ')""";',
    ]));
  }

}