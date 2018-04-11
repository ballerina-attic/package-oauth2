//
// Copyright (c) 2018, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.
//

import ballerina/config;
import ballerina/log;

@Description {value:"Get access token."}
@Return {value:"returns access token."}
public function getAccessToken() returns string {
    return config:getAsString(ACCESS_TOKEN) but { () => "" };
}

@Description {value:"Get client ID."}
@Return {value:"returns client ID."}
public function getClientID() returns string {
    return config:getAsString(CLIENT_ID) but { () => "" };
}

@Description {value:"Get client secret."}
@Return {value:"returns client secret."}
public function getClientSecret() returns string {
    return config:getAsString(CLIENT_SECRET) but { () => "" };
}

@Description {value:"Get refresh token."}
@Return {value:"returns refresh token."}
public function getRefreshToken() returns string {
    return config:getAsString(REFRESH_TOKEN) but { () => "" };
}

@Description {value:"Get refresh token endpoint."}
@Return {value:"returns refresh token endpoint."}
public function getRefreshTokenEndpoint() returns string {
    return config:getAsString(REFRESH_TOKEN_ENDPOINT) but { () => "" };
}

@Description {value:"Get refresh token path."}
@Return {value:"returns refresh tokan path."}
public function getRefreshTokenPath() returns string {
    return config:getAsString(REFRESH_TOKEN_PATH) but { () => "" };
}

@Description {value:"Get base url."}
@Return {value:"returns base url."}
public function getBaseUrl() returns string {
    return config:getAsString(BASE_URL) but { () => "" };
}

@Description {value:"endpoint -> get() request path."}
@Return {value:"returns endpoint -> get() request path."}
public function getRequestPath() returns string {
    return config:getAsString(GET_REQUEST_PATH) but { () => "" };
}

@Description {value:"endpoint -> post() request path.."}
@Return {value:"returns endpoint -> post() request path.."}
public function getPostRequestPath() returns string {
    return config:getAsString(POST_REQUEST_PATH) but { () => "" };
}

@Description {value:"endpoint -> post() request path.."}
@Return {value:"returns endpoint -> post() request path.."}
public function getPayload() returns json {
    json jsonPayload = <json>config:getAsString(PAYLOAD) but { () => "{}" };
    return jsonPayload;
}

@Description {value:"endpoint -> put() request path.."}
@Return {value:"returns endpoint -> put() request path.."}
public function getPutRequestPath() returns string {
    return config:getAsString(PUT_REQUEST_PATH) but { () => "" };
}

@Description {value:"endpoint -> delete() request path.."}
@Return {value:"returns endpoint -> delete() request path.."}
public function getDeleteRequestPath() returns string {
    return config:getAsString(DELETE_REQUEST_PATH) but { () => "" };
}

@Description {value:"endpoint -> patch() request path.."}
@Return {value:"returns endpoint -> patch() request path.."}
public function getPatchRequestPath() returns string {
    return config:getAsString(PATCH_REQUEST_PATH) but { () => "" };
}

@Description {value:"Get uri parameter preference."}
@Return {value:"returns uri parameter preference."}
public function getUriParamPreference() returns boolean {
    string preference = config:getAsString(URI_PARAM_PREFERENCE) but { () => "false" };
    return <boolean>preference;
}

@Description {value:"Get credentil header preference."}
@Return {value:"returns credential header preference."}
public function getCredentialHeaderPreference() returns boolean {
    string preference = config:getAsString(CREDENTIAL_HEADER_PREFERENCE) but { () => "false" };
    return <boolean>preference;
}

@Description {value:"Check whether the response is successfu or not."}
@Return {value:"Returns true for successful response false otherwise."}
public function isSuccessfulResponse(int statusCode, string reasonPhrase) returns boolean {
    string status = statusCode + "";
    if (status.hasPrefix("2")){
        log:printInfo("Status code - " + statusCode + " Reason phrase - " + reasonPhrase);
        return true;
    } else {
        log:printInfo("Status code - " + status + " Reason phrase - " + reasonPhrase);
        return false;
    }
}

//-------------------Constants-------------------//
@final string ACCESS_TOKEN = "accesss_token";
@final string CLIENT_ID = "clientId";
@final string CLIENT_SECRET = "clientSecret";
@final string REFRESH_TOKEN = "refreshToken";
@final string REFRESH_TOKEN_ENDPOINT = "refreshTokenEP";
@final string REFRESH_TOKEN_PATH = "refreshTokenPath";
@final string BASE_URL = "baseUrl";
@final string GET_REQUEST_PATH = "getRequestPath";
@final string POST_REQUEST_PATH = "postRequestPath";
@final string PUT_REQUEST_PATH = "putRequestPath";
@final string PATCH_REQUEST_PATH = "patchRequestPath";
@final string DELETE_REQUEST_PATH = "deleteRequestPath";
@final string PAYLOAD = "jsonPayload";
@final string URI_PARAM_PREFERENCE = "uriParamsPreference";
@final string CREDENTIAL_HEADER_PREFERENCE = "credentialHeaderPreference";
