import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:simple_petstore_dio_sdk/model/error.dart';
import 'package:simple_petstore_dio_sdk/model/pet.dart';

class PetsApi {
    final Dio _dio;
    Serializers _serializers;

    PetsApi(this._dio, this._serializers);

        /// Create a pet
        ///
        /// 
        Future<Response>createPets({ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/pets";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            );
            }
        /// List all pets
        ///
        /// 
        Future<Response<List<Pet>>>listPets({ int limit,CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/pets";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'limit'] = limit;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                final FullType type = const FullType(BuiltList, const [const FullType(Pet)]);
                BuiltList<Pet> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<Pet>>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Info for a specific pet
        ///
        /// 
        Future<Response<Pet>>showPetById(String petId,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/pets/{petId}".replaceAll("{" r'petId' "}", petId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(Pet);
                var data = _serializers.deserializeWith<Pet>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Pet>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
