***Settings***
Library     BuiltIn
Library     Selenium2Library
Library     String
Resource    file_resource/Variables.robot
Resource    file_resource/Keywords.robot

*** Variables ***


*** Keywords ***


*** Test Cases ***
ทดสอบแก้ไขนามสกุลในกรณีที่กรอกข้อมูล-ถูกต้อง
    FOR     ${INDEX}    IN RANGE    6    
    เปิดเว็บ hairzer
    input username
    input password
    กดปุ่ม sign in
    คลิกเมนู
    input Last Name      ${INDEX}        @{HZ_LO_EDIT_03_valid}
    Close Browser
    END

ทดสอบแก้ไขนามสกุลในกรณีที่กรอกข้อมูล-ไม่ถูกต้อง
    FOR     ${INDEX}    IN RANGE    7    
    เปิดเว็บ hairzer
    input username
    input password
    กดปุ่ม sign in
    คลิกเมนู
    input Last Name      ${INDEX}        @{HZ_LO_EDIT_03_invalid}
    Close Browser
    END