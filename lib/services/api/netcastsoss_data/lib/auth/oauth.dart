import 'dart:async';
import 'package:netcastsoss_data_api/auth/auth.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';

class OAuthInterceptor extends AuthInterceptor {
    Map<String, String> tokens = {};

    @override
    FutureOr<void> before(RouteBase route) {
        final authInfo = getAuthInfo(route, "oauth");
        for (var info in authInfo) {
            final token = tokens[info["name"]];
            if(token != null) {
                route.header("Authorization", "Bearer ${token}");
                break;
            }
        }
        return super.before(route);
    }

    @override
    FutureOr after(StringResponse response) {
        return Future.value(response);
    }
}