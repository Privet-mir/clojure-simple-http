*Settings
Library           HttpLibrary.HTTP
Library           String
Library           DateTime
* Variables
${SERVER}               localhost:3000
* Test Cases
Get Time Assertion
    Create Http Context    ${SERVER}     http
    HttpLibrary.HTTP.GET           /get-time
    ${JsonForID}=   Get Response Body
    Log         ${JsonForID}
