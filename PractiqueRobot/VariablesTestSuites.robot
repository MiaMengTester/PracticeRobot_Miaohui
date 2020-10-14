*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***
TC_VariablesTypeScalaire
    Open Browser    $[{url}    ${browser}
    maximize Browser Window
    Input Text    id=txtUsername    Admin    
    Input Text    id=txtPassword    admin123
    Click Button    id=btnLogin
    Close Browser
    
TC_VariableTypeListe
    Open Browser    $[{url}    ${browser}
    maximize Browser Window
    Input Text    id=txtUsername    &{loginData}[userName]  #@{login}[0]     
    Input Text    id=txtPassword    &{loginData}[passWord]  #@{login}[1] 
    Click Button    id=btnLogin
    Close Browser
    

*** Variables ***
#variable type scalaire, 1 variable (au moins 2 espaces after =)
${url}  =  https://opensource-demo.orangehrmlive.com/index.php/auth/login
${browser}  =  gc

#variable type liste (sous forme de liste)
#@{login}    Admin    admin123

#variable de type dictionnaire en utilisant des keys(userName,passWord)
#sous forme de keys valeurs
&{loginData}    userName=Admin passWord=admin123



