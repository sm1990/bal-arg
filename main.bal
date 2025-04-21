import ballerina/io;

public function main(string... args) {
    if args.length() > 0 {
        // Parse the first argument as an int
        int|error inputValue = int:fromString(args[0]);
        if inputValue is int {
            panic error("Program terminated because an integer was provided: " + inputValue.toString());
        } else {
            io:println("The provided input is not an integer.x");
        }
    } else {
        io:println("No arguments provided.");
    }
}
