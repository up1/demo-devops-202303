*** Settings ***
Library    SeleniumLibrary
Test Teardown  Close All Browsers

*** Test Cases ***
Hello with UI Test
    Try to open in browser   http://128.199.99.121:9999  chrome
    Check hello message

*** Keywords ***
Check hello message
    Wait Until Element Contains  id:hello_message   Hello, from spring boot 2023

Try to open in browser
    [Arguments]  ${target_url}  ${browser_type}
    Open Browser    ${target_url}    ${browser_type} 
    ...  remote_url=http://188.166.239.114:4444/wd/hub
    ...  desired_capabilities=browserName:chrome
    Maximize Browser Window