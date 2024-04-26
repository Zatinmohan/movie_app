import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/services/api/api_service.dart';
import 'package:movie_app/services/api/clients/dio_client.dart';
import 'package:movie_app/services/api/errors/api_exceptions.dart';

import 'api_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DioClient>()])
void main() {
  late MockDioClient mockClient;
  late ApiService service;
  setUp(() {
    mockClient = MockDioClient();
    service = ApiService(apiService: mockClient);
  });

  test("Get Request - Success(200)", () async {
    final Map<String, dynamic> response = {'status': true};
    when(
      mockClient.getRequest(
        endPoint: anyNamed('endPoint'),
        querryParams: anyNamed('querryParams'),
        params: anyNamed('params'),
      ),
    ).thenAnswer((_) => Future.value(response));

    final actualResult = await service.getRequest(endPoint: "");
    expect(actualResult, equals(response));

    verify(mockClient.getRequest(
      endPoint: anyNamed('endPoint'),
      querryParams: anyNamed('querryParams'),
      params: anyNamed('params'),
    )).called(1);

    verifyNever(mockClient.postRequest(endPoint: ""));
    verifyNever(mockClient.putRequest(endPoint: ""));
  });

  test("Post Request - Success(200)", () async {
    final Map<String, dynamic> response = {'status': true};
    when(
      mockClient.postRequest(
        endPoint: anyNamed('endPoint'),
        querryParams: anyNamed('querryParams'),
        params: anyNamed('params'),
      ),
    ).thenAnswer((_) => Future.value(response));

    final actualResult = await service.postRequest(endPoint: "");
    expect(actualResult, equals(response));

    verify(mockClient.postRequest(
      endPoint: anyNamed('endPoint'),
      querryParams: anyNamed('querryParams'),
      params: anyNamed('params'),
    )).called(1);

    verifyNever(mockClient.getRequest(endPoint: ""));
    verifyNever(mockClient.putRequest(endPoint: ""));
  });

  test("Put Request - Success(200)", () async {
    final Map<String, dynamic> response = {'status': true};
    when(
      mockClient.putRequest(
        endPoint: anyNamed('endPoint'),
        querryParams: anyNamed('querryParams'),
        params: anyNamed('params'),
      ),
    ).thenAnswer((_) => Future.value(response));

    final actualResult = await service.putRequest(endPoint: "");
    expect(actualResult, equals(response));

    verify(mockClient.putRequest(
      endPoint: anyNamed('endPoint'),
      querryParams: anyNamed('querryParams'),
      params: anyNamed('params'),
    )).called(1);

    verifyNever(mockClient.getRequest(endPoint: ""));
    verifyNever(mockClient.putRequest(endPoint: ""));
  });

  test("Get Request - Failed(401)", () async {
    final ApiExceptions exception = ApiExceptions.fromCode(errorCode: 401);
    when(
      mockClient.getRequest(
        endPoint: anyNamed('endPoint'),
        querryParams: anyNamed('querryParams'),
        params: anyNamed('params'),
      ),
    ).thenThrow(exception.message);

    final actualResult = service.getRequest(endPoint: "");
    expect(actualResult, throwsA(exception.message));

    verify(mockClient.getRequest(
      endPoint: anyNamed('endPoint'),
      querryParams: anyNamed('querryParams'),
      params: anyNamed('params'),
    )).called(1);

    verifyNever(mockClient.postRequest(endPoint: ""));
    verifyNever(mockClient.putRequest(endPoint: ""));
  });

  test("Put Request - Failed(401)", () async {
    final ApiExceptions exception = ApiExceptions.fromCode(errorCode: 401);
    when(
      mockClient.putRequest(
        endPoint: anyNamed('endPoint'),
        querryParams: anyNamed('querryParams'),
        params: anyNamed('params'),
      ),
    ).thenThrow(exception.message);

    final actualResult = service.putRequest(endPoint: "");
    expect(actualResult, throwsA(exception.message));

    verify(mockClient.putRequest(
      endPoint: anyNamed('endPoint'),
      querryParams: anyNamed('querryParams'),
      params: anyNamed('params'),
    )).called(1);

    verifyNever(mockClient.postRequest(endPoint: ""));
    verifyNever(mockClient.getRequest(endPoint: ""));
  });

  test("Post Request - Failed(401)", () async {
    final ApiExceptions exception = ApiExceptions.fromCode(errorCode: 401);
    when(
      mockClient.postRequest(
        endPoint: anyNamed('endPoint'),
        querryParams: anyNamed('querryParams'),
        params: anyNamed('params'),
      ),
    ).thenThrow(exception.message);

    final actualResult = service.postRequest(endPoint: "");
    expect(actualResult, throwsA(exception.message));

    verify(mockClient.postRequest(
      endPoint: anyNamed('endPoint'),
      querryParams: anyNamed('querryParams'),
      params: anyNamed('params'),
    )).called(1);

    verifyNever(mockClient.putRequest(endPoint: ""));
    verifyNever(mockClient.getRequest(endPoint: ""));
  });
}
