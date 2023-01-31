*** Settings ***
Documentation   This file contains Testcase related to invalid login
Resource    ../resource/base/common_functionalities.resource

Library  DataDriver  file=../test_data/Nykaa_data.xlsx   sheet_name=Invalid_Login

Test Setup   Launch Browser, Naviagte To Url And Click SignIN
Test Teardown   Close Browser

Test Template     Invalid Login Test

*** Test Cases ***
TC_${test_case}

*** Keywords ***
Invalid Login Test
    [Arguments]  ${email}  ${password}  ${expected}
    Input Text    name=emailMobile    ${email}
    Click Element    xpath=//*[@type='submit']
    Input Password    name=password    ${password}
    Click Element    xpath=//button[@class='button big fill full small-button-seperator ']
    Page Should Contain    ${expected}

