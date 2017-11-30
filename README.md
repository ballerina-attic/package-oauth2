# Ballerina OAuth2 Client Connector

The OAuth2 connector allows you to handle the authentication flow with oauth2 authentication.
This can be used in other client connectors which use oauth2 authentication.

## Getting started

1. Download the Ballerina tool distribution by navigating https://ballerinalang.org/downloads/
2. Extract ballerina-oauth2-0.95.3.zip and copy ballerina-oauth2-0.95.3.jar into the `<ballerina-tools>/bre/lib` folder.


##### Prerequisites

1. Use this OAuth2 client connector instead of http client authenticator in other client connectors.
2. Obtain the following parameters:
    * Access Token
    * Client Id
    * Client Secret
    * Refresh Token
    * Refresh Token Endpoint

**IMPORTANT:** This access token can be used to make API requests on your own account's behalf. Do not share your access token with anyone.

## Working with Oauth2 REST connector actions

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

## Running samples

##### Invoke the actions

- Copy `connector-oauth2/component/samples/oauth2/samples.bal` file and paste it into `<ballerina-tools>/bin` folder.
- Run the following commands to execute the relevant action.

1. **get:**
    
`bin$ ./ballerina run samples.bal get <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`
    
2. **post:**
    
`bin$ ./ballerina run samples.bal post <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`
    
3. **put:**

`bin$ ./ballerina run samples.bal put <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`
 
4. **delete:**
    
`bin$ ./ballerina run samples.bal delete <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`

5. **patch:**
 
`bin$ ./ballerina run samples.bal patch <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`
 


**Note:** If you are not passing refresh token in the request, access token won't be refreshed.

Here, 

refreshTokenEndpoint - The base url of the refresh token endpoint.

refreshTokenPath - Resource path for refresh token endpoint.



| Ballerina Version | oauth2 Connector Version |
| ----------------- | ---------------------- |
| 0.95.3 | 0.95.3 |