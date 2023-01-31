*** Settings ***
Documentation   This file contains Testcase related to valid login
Resource    ../resource/base/common_functionalities.resource

Test Setup   Launch Browser, Naviagte To Url And Click SignIN
Test Teardown   Close Browser

*** Test Cases ***

Valid Login Test

    Input Text    name=emailMobile    ambikabkammar@gmail.com
    Click Element    xpath=//*[@type='submit']
    Input Password    name=password    Demo@#123
    Click Element    XPATH=//button[@class='button big fill full small-button-seperator ']
    Sleep    10s
    Element Should Contain    id=category    Categories