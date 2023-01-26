import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GpRepository {
  static final GpRepository _instance = GpRepository._internal();
  
  factory GpRepository() {
    return _instance;
  }
  GpRepository._internal() {
    initialize();
  }

    late ValueNotifier<GraphQLClient> client;


  void initialize() async {
    final HttpLink httpLink = HttpLink(
      'https://api.github.com/graphql', // endpoint 등록
    );

    var authLink = AuthLink(
      getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
      // OR
      // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    ); // 인증 토큰이 있다면 등록

    final Link link = authLink.concat(httpLink);

    var graphQLClient = GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore(), partialDataPolicy: PartialDataCachePolicy.accept),
    );

    client = ValueNotifier(graphQLClient);
  }
}

abstract class GpQuery {
  static String getParty = r'''{
    query($id: ID!) {
    post(id: $id) {
      title
      content
    }
  }
  }''';
}
