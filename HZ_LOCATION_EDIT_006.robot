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
    input Address      ${INDEX}        @{HZ_LO_EDIT_06_valid}
    Reload Page
    END
    Close Browser

ทดสอบแก้ไขที่อยู่ในกรณีที่กรอกข้อมูล-ไม่ถูกต้อง
    เปิดเว็บ hairzer
    input username
    input password
    กดปุ่ม sign in
    คลิกเมนู
    FOR     ${INDEX}    IN RANGE    2    
    input Address      ${INDEX}        @{HZ_LO_EDIT_06_valid}
    Reload Page
    END
    

ใส่ข้อมูลผิด แค่ช่องเดียว 1
     Sleep   3s
    Page Should Contain Element     //*[@id="addr_no"]
    Input Text  //*[@id="addr_no"]        ${HZ_LO_EDIT_06_invalid}[2]
             
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[1]/div[1]/div[6]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลส่วนตัวสำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s
    Reload Page

ใส่ข้อมูลผิด แค่ช่องเดียว 2
     Sleep   3s
    Page Should Contain Element     //*[@id="addr_no"]
    
    Input Text  //*[@id="addr_soi"]     ${HZ_LO_EDIT_06_invalid}[3]
            
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[1]/div[1]/div[6]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลส่วนตัวสำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s
    Reload Page

ใส่ข้อมูลผิด แค่ช่องเดียว 3
     Sleep   3s
    Page Should Contain Element     //*[@id="addr_no"]
    
    Input Text  //*[@id="addr_road"]     ${HZ_LO_EDIT_06_invalid}[4]
             
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[1]/div[1]/div[6]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลส่วนตัวสำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s
    Reload Page

ใส่ข้อมูลผิด แค่ช่องเดียว 4
     Sleep   3s
    Page Should Contain Element     //*[@id="addr_no"]
    
    Input Text  //*[@id="addr_subDistrict"]     ${HZ_LO_EDIT_06_invalid}[5]         
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[1]/div[1]/div[6]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลส่วนตัวสำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s
    Reload Page
    Close Browser