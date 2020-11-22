***Settings***
Library     BuiltIn
Library     Selenium2Library
Library     String
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
ทดสอบ
    #${HZ_LO_EDIT}   Create List       สมสมร   dede.beb......      ใจดี     มิสเตอร์ smorf    Somsamorn   Mr.Oriver   ไมตรี/๑      สมปองไม่อยากกินก๋วยเตี๋ยวที่หน้าสภา     ปรายุทธ์มุดใต้ท่อห่อหมกฮ้วกza2324&     สไมอิแมปอปแวปมแทิิาเทาดทใแ     สมใจmaidee+-11513519        สม@#%       adjvbl65198$%^
    FOR     ${INDEX}    IN      @{HZ_LO_EDIT}
        Log To Console      \n${INDEX}
    END