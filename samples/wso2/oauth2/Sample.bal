package samples.wso2.oauth2;

import ballerina.io;
import src.wso2.oauth2;
import ballerina.net.http;

public function main (string[] args) {
    http:Request req = {};
    // Send a GET request to the specified endpoint
    oauth2:OAuth2Client oauth = {};
    oauth.init(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
    http:Response resp = {};
    resp, _ = oauth.get(args[7], req);
    io:println("GET request:");
    var jsonPayload1, payloadError1 = resp.getJsonPayload();
    if (payloadError1 == null) {
        io:println(jsonPayload1);
    } else {
        io:println(payloadError1.message);
    }
}
