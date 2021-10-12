***Settings***
Library     BuiltIn
Library     Selenium2Library
Library     String
Resource    file_resource/Variables.robot
Resource    file_resource/Keywords.robot

*** Variables ***


*** Keywords ***


*** Test Cases ***
ทดสอบแก้ไขที่อยู่ในกรณีที่กรอกข้อมูล-ถูกต้อง
    เปิดเว็บ hairzer
    input username
    input password
    กดปุ่ม sign in
    คลิกเมนู
    FOR     ${INDEX}    IN RANGE    4    
    input Address      ${INDEX}        @{HZ_LO_EDIT_014}
    Reload Page
    END
    Close Browser

