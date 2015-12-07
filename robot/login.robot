*** Settings ***
Documentation   Suite description
...
...             The system specific keywords created here form our own
...             domain specific language . They utilize keywords provided
...             by the imported Selenium2Library
...             Test Suite is about opening Google Page
Library         Selenium2Library

*** Variables ***
${BROWSER}      Firefox
${LOGIN URL}    http://google.com/
${DELAY}        0


*** Test Cases ***
Open Google Page
    [Tags]    DEBUG
    Open Google Web Page in Chrome Browser
    Google page should be open
    Check Google search box is present



*** Keywords ***
Open Google Web Page in Chrome Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Google page should be open
    page should contain     Google

Check Google search box is present
    page should contain element  id=lst-ib