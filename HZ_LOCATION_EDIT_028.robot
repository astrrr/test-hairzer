***Settings***
Library     BuiltIn
Library     Selenium2Library
Library     String
Resource    file_resource/Variables.robot
Resource    file_resource/Keywords.robot

*** Variables ***


*** Keywords ***


*** Test Cases ***
ทดสอบแก้ไขคำอธิบายในกรณีที่กรอกข้อมูล-ไม่ถูกต้อง
    เปิดเว็บ hairzer
    input username
    input password
    กดปุ่ม sign in
    คลิกเมนู
    FOR     ${INDEX}    IN RANGE    3    
    input Description     ${INDEX}        @{HZ_LO_EDIT_028}
    Reload Page
    END
    Close Browser