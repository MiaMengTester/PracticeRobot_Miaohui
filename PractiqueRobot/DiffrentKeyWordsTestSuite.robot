*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
TC_001_Screenshot
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login  gc
    maximize Browser Window
    Input Text    id=txtUsername    Admin    
    Input Text    id=txtPassword    admin123
    Click Button    id=btnLogin
    Capture Page Screenshot    ./SnapShot/ecran1.png 
    
CT_002_Synchronisation
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login  gc
    maximize Browser Window
    #Sleep    10s
    #SetSeleniumSpeed: set time for each instruction
    Set Selenium Speed    2s    
    Input Text    id=txtUsername    Admin    
    Input Text    id=txtPassword    admin123
    Click Button    id=btnLogin
    Close Browser