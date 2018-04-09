# Ballerina OAuth2 Client Connector

The OAuth2 connector allows you to handle the authentication flow with oauth2 authentication.
This can be used in other client connectors which use oauth2 authentication.

### Compatibility

| Language Version                  | Connector Version |
|-----------------------------------|:------------------|
|  ballerina-0.970-alpha-1-SNAPSHOT  | 0.9.0             |

## Getting started
1. Clone package-oauth2 from [https://github.com/wso2-ballerina/package-oauth2](https://github.com/wso2-ballerina/package-oauth2).
2. Import the package to your ballerina project.

##### Prerequisites

1. Download the ballerina [distribution](https://ballerinalang.org/downloads/).
2. Use this OAuth2 client connector instead of http client authenticator in other client connectors.
3. Obtain the following parameters:
    * Access Token
    * Client Id
    * Client Secret
    * Refresh Token
    * Refresh Token Endpoint

When initializing, you can either provide Access Token only or Client Id, Client Secret, Refresh Token and Refresh Token Endpoint only.

**IMPORTANT:** This access token can be used to make API requests on your own account's behalf. Do not share your access token with anyone.

## Working with Oauth2 REST connector actions


First initialize the endpoint in either way following.

```ballerina 
  endpoint Client oauth2EP {
     accessToken:"",
     baseUrl:"",
     clientConfig:{},
     useUriParams:true/false,
     setCredentialsInHeader:true/false
  };
```
```ballerina 
  endpoint Client oauth2EP {
     clientId:"",
     clientSecret:"",
     refreshToken:"",
     refreshTokenEP:"",
     refreshTokenPath:"",
     baseUrl:"",
     clientConfig:{},
     useUriParams:true/false,
     setCredentialsInHeader:true/false
  };
```

##### get
The get action allows to use http get action with oauth2 authentication flow.

###### Properties
  * path -  The path of the endpoint.
  * request -  The request message.

##### post
The post action allows to use http post action with oauth2 authentication flow.

###### Properties
  * path -  The path of the endpoint.
  * request -  The request message.

##### put
The put action allows to use http put action with oauth2 authentication flow.

###### Properties
  * path -  The path of the endpoint.
  * request -  The request message.

##### delete
The delete action allows to use http delete action with oauth2 authentication flow.

###### Properties
  * path -  The path of the endpoint.
  * request -  The request message.

##### patch
The patch action allows to use http patch action with oauth2 authentication flow.

###### Properties
* path -  The path of the endpoint.
* request -  The request message.
