import ballerina/io;
import ballerina/http;
//import ballerina/os;

public function main() {
    io:println("Hello, World!");
}

//configurable int port = ?;
//configurable int varPort = ?;

int constPort = 9001;
//os:Error? err = os:setEnv("varPort", "9097");

service http:Service / on new http:Listener(constPort) {
    resource function get welcome() returns string{
        return "Welcome";
    }
}
