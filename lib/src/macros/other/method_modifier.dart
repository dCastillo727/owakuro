//ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:macros/macros.dart';
import 'package:owakuro/src/utils/my_libraries.dart';

macro class MethodModifier implements MethodDefinitionMacro {
  const MethodModifier();

  @override
  FutureOr<void> buildDefinitionForMethod(MethodDeclaration method, FunctionDefinitionBuilder builder) async {
    final augPrint = await builder.resolveIdentifier(MyLibraries.core.uri, 'print');

    builder.augment(FunctionBodyCode.fromParts([
      '{',
      'return (augment super).call();',
      '}',
    ].joinAsCode('\n')));
  }

}