import 'dart:async';

import 'package:macros/macros.dart';

class DefineLogger implements ClassDefinitionMacro, ClassDeclarationsMacro {
  @override
  FutureOr<void> buildDefinitionForClass(ClassDeclaration clazz, TypeDefinitionBuilder builder) {
    // TODO: implement buildDefinitionForClass
    throw UnimplementedError();
  }
  
  @override
  FutureOr<void> buildDeclarationsForClass(ClassDeclaration clazz, MemberDeclarationBuilder builder) {
    // TODO: implement buildDeclarationsForClass
    throw UnimplementedError();
  }
  
}