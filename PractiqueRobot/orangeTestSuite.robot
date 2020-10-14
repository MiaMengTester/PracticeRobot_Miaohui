*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
TC_001_LoginTest
    Login
    Sleep    5s        
    Logout 

TC_002_GoBack
    Login
    #Open Browser    https://www.google.com    gc (diffrent instance)
    Go To    https://www.google.com
    Sleep    5s    
    Go Back
    Log To Console    finish    
    Log To Console    le test est execute par %{username} sur %{os}


*** Keywords ***
Login
    #documentation, give explication for keywords
    [Documentation]    keword for login 
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login  gc
    maximize Browser Window
    Input Text    id=txtUsername    Admin    
    Input Text    id=txtPassword    admin123
    Click Button    id=btnLogin
    
Logout
    Click Element    id=welcome
    Sleep    3s    
    #Click Element    link=Logout
    #Click Link    /index.php/auth/logout   
    Click Element    xpath=//a[@href='/index.php/auth/logout'] 
    Close Browser
    
    


       
    


    
                