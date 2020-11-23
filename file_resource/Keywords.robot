*** Variables ***


*** Keywords ***
เปิดเว็บ hairzer
    Open Browser     ${URL}     ${browser}
    Maximize Browser Window
    Set Selenium Speed  0.3
input username
    
    Input Text    name=email    ${username_location}
     
input password
    
    Input Text      name=password   ${password_location}
กดปุ่ม sign in
    Click button    name=submit_signin

คลิกเมนู
    Sleep   5s
    Page Should Contain Element     //*[@id="navbarDropdown"]  
    Click Element       //*[@id="navbarDropdown"]
    Page Should Contain Element     //*[@id="navbarSupportedContent"]/ul[2]/li/div/a[2]
    Click Element       //*[@id="navbarSupportedContent"]/ul[2]/li/div/a[2] 
Hello Name
    [Arguments] ${data}
    Log To Console  \nHello ${data}
    Log To Console  harizer  ${URL}

input Name
    FOR ${INDEX}    IN  ${HZ_LO_EDIT_02}
        Input Text  id=firstName    @{INDEX}
        Click Button    name=submit_profile_location
    END

