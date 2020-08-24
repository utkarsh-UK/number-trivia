import 'package:trivia/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten last time
  /// the user has an internet connection.
  ///
  /// Throws a [CachedException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();
  
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}
