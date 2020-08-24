import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:trivia/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'test text');

  test('should be a subclass of NumberTrivia Entity', () {
    //assert
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return valid model when the JSON number is an int', () {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });

    test('should return valid model when the JSON number is regarded as double',
        () {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () {
      //act
      final result = tNumberTriviaModel.toJson();
      //assert
      final expectedMap = {'text': 'test text', "number": 1};
      expect(result, expectedMap);
    });
  });
}
