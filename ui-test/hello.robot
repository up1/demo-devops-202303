*** Settings ***
Library    SeleniumLibrary
Library    Collections
Test Teardown  Close All Browsers

*** Variables ***
${URL}       http://128.199.99.121:9999

#robot -v URL:http://www.google.com hello.robot

*** Test Cases ***
Hello with UI Test
    Try to open in browser   ${URL}  chrome
    Check hello message

*** Keywords ***
Check hello message
    Wait Until Element Contains  id:hello_message   Hello, from spring boot 2023

Try to open in browser
    [Arguments]  ${target_url}  ${browser_type}
    Open Browser    ${target_url}    ${browser_type} 
    ...  remote_url=http://188.166.239.114:4444
    Maximize Browser Window