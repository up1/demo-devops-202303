*** Settings ***
Library    SeleniumLibrary
Library    Collections
Test Teardown  Close All Browsers

*** Variables ***
${URL}       http://174.138.24.94:9999

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
    ...  remote_url=http://159.65.15.235:4444
    Maximize Browser Window
