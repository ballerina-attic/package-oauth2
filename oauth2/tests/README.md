### Compatibility

| Language Version                  | Connector Version |
|-----------------------------------|:------------------|
|  ballerina-0.970-alpha-1-SNAPSHOT  | 0.9.1             |


### Prerequisites

Obtain the following parameters:
  * Access Token
  * Client Id
  * Client Secret
  * Refresh Token
  * Refresh Token Endpoint

Create a ballerina.conf inside package-oauth2 and add necessary details.When initializing as follows, you can either provide Access Token only or Client Id, Client Secret, Refresh Token and Refresh Token Endpoint only.

```ballerina.conf
     clientId = "",
     clientSecret = "",
     refreshToken = "",
     refreshTokenEndpoint = "",
     refreshTokenPath = "",
     baseUrl = "",
     useUriParams = "true/false"
     setCredentialsInHeader = "true/false"
     getRequestPath = ""
     postRequestPath = ""
     putRequestPath = ""
     deleteRequestPath = ""
     patchRequestPath = ""
     payload = ""
```

| Parameter   | Description                                                                                  |
| ----------- | -------------------------------------------------------------------------------------------- |
| clientId    | The client identifier as assigned by the authorization server, when the client was registered.                                                               |
| clientSecret |The client application's client secret .                                                     |
| refreshToken | Refresh token in case the access token can expire. The refresh token is used to obtain a new access token once the one returned in this response is no longer valid.                      |
| refreshTokenEndpoint  | Refresh token endpoint.                        |
| refreshTokenPath  | Refresh token path.                        |
| baseUrl  | Base URL.                        |
|  getRequestPath | GET request path.                        |
 postRequestPath | POST request path.                        |
 putRequestPath | PUT request path.                        |
 patchRequestPath | PATCH request path.                        |
 deleteRequestPath | DELETE request path.                        |

**Note:** If you are not passing refresh token in the request, access token won't be refreshed.

Here, 

refreshTokenEndpoint - The base url of the refresh token endpoint.

refreshTokenPath - Resource path for refresh token endpoint.

Run tests :
```
ballerina init
ballerina test oauth2
```
