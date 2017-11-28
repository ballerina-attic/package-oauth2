import org.wso2.ballerina.connectors.oauth2;

import ballerina.net.http;

function main (string[] args) {

    endpoint<oauth2:ClientConnector> clientConnector {
        create oauth2:ClientConnector(args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
    }
    http:Request request = {};
    http:Response userProfileResponse = {};
    json userProfileJSONResponse;
    http:HttpConnectorError e;

    if (args[0] == "get") {
        println("-----Calling get action-----");
        userProfileResponse, e = clientConnector.get(args[8], request);
        if(e == null) {
            userProfileJSONResponse = userProfileResponse.getJsonPayload();
            println(userProfileJSONResponse.toString());
        } else {
            println(e);
        }
    }
}