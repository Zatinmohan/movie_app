import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/services/api/clients/dio_client.dart';
import 'package:movie_app/services/api/errors/api_exceptions.dart';

import 'dio_client_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
void main() {
  late MockDio mockDio;
  late DioClient dioClient;

  setUp(() {
    mockDio = MockDio();
    dioClient = DioClient(dio: mockDio);
  });

  test("Get Success - 200", () async {
    final Map<String, dynamic> result = {'status': true};
    when(mockDio.get("")).thenAnswer(
      (_) => Future.value(
        Response(
          statusCode: 200,
          requestOptions: RequestOptions(),
          data: result,
        ),
      ),
    );

    final actualResult = await dioClient.getRequest(endPoint: "");

    expect(actualResult, equals(result));

    verify(mockDio.get("")).called(1);
  });

  test("Post Success - 200", () async {
    final Map<String, dynamic> result = {'status': true};
    when(mockDio.post("")).thenAnswer(
      (_) => Future.value(
        Response(
          statusCode: 200,
          requestOptions: RequestOptions(),
          data: result,
        ),
      ),
    );

    final actualResult = await dioClient.postRequest(endPoint: "");

    expect(actualResult, equals(result));

    verify(mockDio.post("")).called(1);
  });

  test("Put Success - 200", () async {
    final Map<String, dynamic> result = {'status': true};
    when(mockDio.put("")).thenAnswer(
      (_) => Future.value(
        Response(
          statusCode: 200,
          requestOptions: RequestOptions(),
          data: result,
        ),
      ),
    );

    final actualResult = await dioClient.putRequest(endPoint: "");

    expect(actualResult, equals(result));

    verify(mockDio.put("")).called(1);
  });

  test("Get Failed - 400", () async {
    when(mockDio.get("")).thenAnswer(
      (_) => Future.value(
        Response(
          statusCode: 400,
          requestOptions: RequestOptions(),
        ),
      ),
    );

    final actualResult = dioClient.getRequest(endPoint: "");

    expect(
        actualResult,
        throwsA(
          ApiExceptions.fromCode(errorCode: 400).message,
        ));

    verify(mockDio.get("")).called(1);
  });

  test("Post Failed - 400", () async {
    when(mockDio.post("")).thenAnswer(
      (_) => Future.value(
        Response(
          statusCode: 400,
          requestOptions: RequestOptions(),
        ),
      ),
    );

    final actualResult = dioClient.postRequest(endPoint: "");

    expect(
        actualResult,
        throwsA(
          ApiExceptions.fromCode(errorCode: 400).message,
        ));

    verify(mockDio.post("")).called(1);
  });

  test("Put Failed - 400", () async {
    when(mockDio.put("")).thenAnswer(
      (_) => Future.value(
        Response(
          statusCode: 400,
          requestOptions: RequestOptions(),
        ),
      ),
    );

    final actualResult = dioClient.putRequest(endPoint: "");

    expect(
        actualResult,
        throwsA(
          ApiExceptions.fromCode(errorCode: 400).message,
        ));

    verify(mockDio.put("")).called(1);
  });
}
