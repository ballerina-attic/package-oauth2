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

import ballerina/io;
import ballerina/http;
import ballerina/util;

public function main(string[] args) {
    // Send a GET request to the specified endpoint
    endpoint OAuth2Client oauth2EP {
        accessToken:args[0],
        clientId:args[1],
        clientSecret:args[2],
        refreshToken:args[3],
        refreshTokenEP:args[4],
        refreshTokenPath:args[5],
        baseUrl:args[6],
        clientConfig:{},
        useUriParams:true,
        setCredentialsInHeader:false
    };

    http:Request req = new ();
    io:println("--------GET request-------");
    var resp = oauth2EP -> get(args[7], req);
    match resp {
        http:Response res => io:println(res.getJsonPayload());
        http:HttpConnectorError err => io:println(err);
    }
    io:println("--------POST request-------");
    json jsonPayload = {};
    req.setJsonPayload(jsonPayload);
    var postResp = oauth2EP -> post(args[8], req);
    match postResp {
        http:Response res => io:println(res.getJsonPayload());
        http:HttpConnectorError err => io:println(err);
    }
}
