### Compatibility

| Language Version | Connector Version |
|-------|:------------:|
| ballerina-0.970-alpha-1-SNAPSHOT | 0.970-alpha-1-SNAPSHOT |


### Prerequisites

Obtain the following parameters:
  * Access Token
  * Client Id
  * Client Secret
  * Refresh Token
  * Refresh Token Endpoint

When initializing as follows, you can either provide Access Token only or Client Id, Client Secret, Refresh Token and Refresh Token Endpoint only.

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

### Run Tests

- Run the following commands to execute the relevant action.

1. **get:**
    
`bin$ ./ballerina run tests get <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`
    
2. **post:**
    
`bin$ ./ballerina run tests post <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`
    
3. **put:**

`bin$ ./ballerina run tests put <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`
 
4. **delete:**
    
`bin$ ./ballerina run tests delete <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`

5. **patch:**
 
`bin$ ./ballerina run tests patch <baseUrl> <accessToken> <clientId> <clientSecret> <refreshToken> <refreshTokenEndPoint> <refreshTokenPath> <path>`
 


**Note:** If you are not passing refresh token in the request, access token won't be refreshed.

Here, 

refreshTokenEndpoint - The base url of the refresh token endpoint.

refreshTokenPath - Resource path for refresh token endpoint.