*** Variables ***


*** Keywords ***
เปิดเว็บ hairzer
    Open Browser     ${URL}     ${browser}
    Maximize Browser Window
    Set Selenium Speed  0.4
input username
    
    Input Text    //*[@id="app"]/div[2]/div/div/div/div/input[1]    ${username_location}
     
input password
    
    Input Text      //*[@id="app"]/div[2]/div/div/div/div/input[2]   ${password_location}
กดปุ่ม sign in
    Click button    //*[@id="app"]/div[2]/div/div/div/div/div[1]/div[2]/button

คลิกเมนู
    Sleep   5s
    Page Should Contain Element     //*[@id="navbarDropdown"]  
    Click Element       //*[@id="navbarDropdown"]
    Page Should Contain Element     //*[@id="navbarSupportedContent"]/ul[2]/li/div/a[2]
    Click Element       //*[@id="navbarSupportedContent"]/ul[2]/li/div/a[2]      
Hello Name
    [Arguments]     ${data}
    Log To Console  \nHello ${data}
    Log To Console  harizer  ${URL}

input Name
    [Arguments]     ${INDEX}        @{ITEMS}
    
    Sleep   1s
    Page Should Contain Element     //*[@id="firstName"]
    Input Text  //*[@id="firstName"]        ${ITEMS}[${INDEX}]
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[1]/div[1]/div[6]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลส่วนตัวสำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s
    
input Last Name
    [Arguments]     ${INDEX}        @{ITEMS}
    Sleep   3s
    Page Should Contain Element     //*[@id="lastName"]
    Input Text  //*[@id="lastName"]        ${ITEMS}[${INDEX}]
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[1]/div[1]/div[6]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลส่วนตัวสำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s

input Phone Number
    [Arguments]     ${INDEX}        @{ITEMS}
    Sleep   3s
    Page Should Contain Element     //*[@id="Phone"]
    Input Text  //*[@id="Phone"]        ${ITEMS}[${INDEX}]
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[1]/div[1]/div[6]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลส่วนตัวสำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s

input Address
    [Arguments]     ${INDEX}        @{ITEMS}
    Sleep   3s
    Page Should Contain Element     //*[@id="addr_no"]
    Input Text  //*[@id="addr_no"]        ${ITEMS}[${INDEX}]
    Input Text  //*[@id="addr_soi"]     ${ITEMS}[${INDEX}]
    Input Text  //*[@id="addr_road"]     ${ITEMS}[${INDEX}]
    Input Text  //*[@id="addr_subDistrict"]     ${ITEMS}[${INDEX}]         
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[1]/div[1]/div[6]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลส่วนตัวสำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s

input Location Name
    [Arguments]     ${INDEX}        @{ITEMS}
    Sleep   3s
    Page Should Contain Element     //*[@id="locationName"]
    Input Text  //*[@id="locationName"]        ${ITEMS}[${INDEX}]
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div[5]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลการให้บริการของสถานที่สำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s

input Cost
    [Arguments]     ${INDEX}        @{ITEMS}
    Sleep   3s
    Page Should Contain Element     //*[@id="cost"]
    Input Text  //*[@id="cost"]        ${ITEMS}[${INDEX}]
    Click Button    //*[@id="app"]/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div[5]/button
    Sleep   1s
    Alert Should Be Present     text=แก้ไขข้อมูลการให้บริการของสถานที่สำเร็จ
    Run Keyword And Ignore Error    Click Button    //button    
    Sleep   1s