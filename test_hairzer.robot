***Settings***
Library     BuiltIn
Library     Selenium2Library
Resource    file_resource/Variables.robot
Resource    file_resource/Keywords.robot

*** Variables ***
${URL}      http://localhost:8080/

*** Keywords ***
Hello Name
    [Arguments]     ${data}
    Log To Console  \nHello ${data}
    Log To Console  harizer = ${URL}

*** Test Cases ***
ลองส่งค่า
    Hello Name  testtest