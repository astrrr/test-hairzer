***Settings***
Library     BuiltIn
Library     Selenium2Library
Library     String
Resource    file_resource/Variables.robot
Resource    file_resource/Keywords.robot

*** Variables ***


*** Keywords ***


*** Test Cases ***
ทดสอบแก้ไขราคาในกรณีที่กรอกข้อมูล-ไม่ถูกต้อง
    เปิดเว็บ hairzer
    input username
    input password
    กดปุ่ม sign in
    คลิกเมนู
    FOR     ${INDEX}    IN RANGE    15    
    input Cost     ${INDEX}        @{HZ_LO_EDIT_021}
    Reload Page
    END
    Close Browser