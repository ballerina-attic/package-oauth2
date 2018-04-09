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

import ballerina/http;

@Description {value:"Represents an OAuth2 client endpoint"}
@Field {value:"conn: The OAuth2Connector of the endpoint"}
@Field {value:"config: The OAuth2 client endpoint configurations"}
public type OAuth2Client object {
    public {
        OAuth2Connector conn;
        OAuth2ClientEndpointConfiguration config;
    }

    new () {

    }

    @Description {value:"Gets called when the endpoint is being initialized"}
    @Param {value:"config: The OAuth2ClientEndpointConfiguration of the endpoint"}
    public function init(OAuth2ClientEndpointConfiguration config) {
        self.config = config;
        //Initalize OAuth2Connector with OAuth2ClientEndpoint Configurations
        self.conn = new (config.accessToken, config.baseUrl, config.clientId, config.clientSecret, config.refreshToken,
            config.refreshTokenEP, config.refreshTokenPath, config.useUriParams, config.setCredentialsInHeader,
            http:createHttpClient(config.baseUrl, config.clientConfig), config.clientConfig);
    }


    public function register(typedesc serviceType) {

    }

    public function start() {

    }

    @Description {value:"Returns the connector that client code uses"}
    @Return {value:"The connector that client code uses"}
    public function getClient() returns OAuth2Connector {
        return self.conn;
    }

    @Description {value:"Stops the registered service"}
    @Return {value:"Error occured during registration"}
    public function stop() {

    }
};

@Description {value:"OAuth2ClientEndpointConfiguration represents options to be used for OAuth2 client invocation"}
@Field {value:"accessToken: Access token for OAuth2Endpoint"}
@Field {value:"baseUrl: The base url of the api"}
@Field {value:"clientId: The client id"}
@Field {value:"clientSecret: The client secret"}
@Field {value:"refreshToken: The refresh token"}
@Field {value:"refreshTokenEP: The base endpoint url to use refresh token"}
@Field {value:"refreshTokenPath: The path of refresh token url"}
@Field {value:"useUriParams: Specifies whehter use uri parameters. The default value is false."}
@Field {value:"setCredentialsHeader: Specifies whether to set credentials as headers. The default value is false."}
@Field {value:"clientConfig: ClientEndpointConfiguration to use for HTTP client invocation"}
public type OAuth2ClientEndpointConfiguration {
    string accessToken;
    string baseUrl;
    string clientId;
    string clientSecret;
    string refreshToken;
    string refreshTokenEP;
    string refreshTokenPath;
    boolean useUriParams = false;
    boolean setCredentialsInHeader = false;
    http:ClientEndpointConfiguration clientConfig;
};
