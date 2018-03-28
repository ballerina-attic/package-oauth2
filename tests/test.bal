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

package tests;

import ballerina/io;
import oauth2;
import ballerina/net.http;

public function main (string[] args) {

    // Send a GET request to the specified endpoint
    endpoint oauth2:OAuth2Endpoint oauth2EP {
        baseUrl:args[0],
    accessToken:args[1],
        clientConfig:{},
        refreshToken:args[2],
        clientId:args[3],
        clientSecret:args[4],
        refreshTokenEP:args[5],
        refreshTokenPath:args[6],
        useUriParams:true
    };
    http:Request req = {};
    io:println("--------GET request-------");
    var resp = oauth2EP->get(args[7], req);
    match resp {
        http:Response res =>  io:println(res.getJsonPayload());
        http:HttpConnectorError err => io:println(err);
    }

    io:println("--------POST request-------");
    json spreadsheetJSONPayload = {"properties": {"title": "testBal"}};
    req.setJsonPayload(spreadsheetJSONPayload);
    var postResp = oauth2EP->post(args[8], req);
    match postResp {
        http:Response res =>  io:println(res.getJsonPayload());
        http:HttpConnectorError err => io:println(err);
    }

}
