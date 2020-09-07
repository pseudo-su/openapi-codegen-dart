library expanded_petstore_jaguar_sdk.api;

import 'package:http/http.dart' as http;
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:expanded_petstore_jaguar_sdk/auth/api_key_auth.dart';
import 'package:expanded_petstore_jaguar_sdk/auth/basic_auth.dart';
import 'package:expanded_petstore_jaguar_sdk/auth/oauth.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';

import 'package:expanded_petstore_jaguar_sdk/api/pets_api.dart';

import 'package:expanded_petstore_jaguar_sdk/model/error.dart';
import 'package:expanded_petstore_jaguar_sdk/model/new_pet.dart';
import 'package:expanded_petstore_jaguar_sdk/model/pet.dart';
import 'package:expanded_petstore_jaguar_sdk/model/pet_all_of.dart';



final _jsonJaguarRepo = JsonRepo()
..add(ErrorSerializer())
..add(NewPetSerializer())
..add(PetSerializer())
..add(PetAllOfSerializer())
;
final Map<String, CodecRepo> defaultConverters = {
    MimeTypes.json: _jsonJaguarRepo,
};



final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class ExpandedPetstoreJaguarSdk {
    List<Interceptor> interceptors;
    String basePath = "http://petstore.swagger.io/v1";
    Route _baseRoute;
    final Duration timeout;

    /**
    * Add custom global interceptors, put overrideInterceptors to true to set your interceptors only (auth interceptors will not be added)
    */
    ExpandedPetstoreJaguarSdk({List<Interceptor> interceptors, bool overrideInterceptors = false, String baseUrl, this.timeout = const Duration(minutes: 2)}) {
        _baseRoute = Route(baseUrl ?? basePath).withClient(globalClient ?? http.Client());
        if(interceptors == null) {
            this.interceptors = _defaultInterceptors;
        }
        else if(overrideInterceptors){
            this.interceptors = interceptors;
        }
        else {
            this.interceptors = List.from(_defaultInterceptors)..addAll(interceptors);
        }

        this.interceptors.forEach((interceptor) {
            _baseRoute.before(interceptor.before);
            _baseRoute.after(interceptor.after);
        });
    }

    void setOAuthToken(String name, String token) {
        (_defaultInterceptors[0] as OAuthInterceptor).tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (_defaultInterceptors[1] as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (_defaultInterceptors[2] as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }

    
    /**
    * Get PetsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    PetsApi getPetsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return PetsApi(base: base, converters: converters, timeout: timeout);
    }

    
}
