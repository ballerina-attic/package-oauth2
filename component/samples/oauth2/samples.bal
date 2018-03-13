import org.wso2.ballerina.connectors.oauth2;

import ballerina.io;
import ballerina.net.http;

function main (string[] args) {

  endpoint<oauth2:ClientConnector> clientConnector {
      create oauth2:ClientConnector(args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
  }
  http:OutRequest request = {};
  http:InResponse userProfileResponse = {};
  json userProfileJSONResponse;
  http:HttpConnectorError e;

  if (args[0] == "get") {
      io:println("-----Calling get action-----");
      userProfileResponse, e = clientConnector.get(args[8], request);
      if(e == null) {
          userProfileJSONResponse = userProfileResponse.getJsonPayload();
          io:println(userProfileJSONResponse.toString());
      } else {
          io:println(e);
      }
  }
}
