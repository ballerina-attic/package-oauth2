// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
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

import ballerina/log;
import ballerina/http;
import ballerina/test;

// OAuth
endpoint APIClient apiClient {
    accessToken:getAccessToken(),
    clientId:getClientID(),
    clientSecret:getClientSecret(),
    refreshToken:getRefreshToken(),
    refreshTokenEP:getRefreshTokenEndpoint(),
    refreshTokenPath:getRefreshTokenPath(),
    baseUrl:getBaseUrl(),
    clientConfig:{},
    useUriParams:getUriParamPreference(),
    setCredentialsInHeader:getCredentialHeaderPreference()
};


@test:Config {
    groups:["network-calls"]
}
function testGet() {
    log:printInfo("oauth2EP -> get()");
    http:Request req = new();
    var resp = apiClient -> get(getRequestPath(), req);
    match resp {
        http:Response res => {
            test:assertEquals(isSuccessfulResponse(res.statusCode, res.reasonPhrase), true, msg = "Failed getProject()");
        }
        http:HttpConnectorError err => {
            test:assertFail(msg = err.message);
        }
    }
}

@test:Config {
    groups:["network-calls"]
}
function testPost() {
    log:printInfo("oauth2EP -> get()");
    http:Request req = new();
    var resp = apiClient -> post(getPostRequestPath(), req);
    match resp {
        http:Response res => {
            test:assertEquals(isSuccessfulResponse(res.statusCode, res.reasonPhrase), true, msg = "Failed getProject()");
        }
        http:HttpConnectorError err => {
            test:assertFail(msg = err.message);
        }
    }
}

