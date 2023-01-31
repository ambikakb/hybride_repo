*** Settings ***
Documentation   This file contains Testcase related to valid login
Resource    ../resource/base/common_functionalities.resource
Library  DataDriver  file=../test_data/Nykaa_data.xlsx   sheet_name=AddCart
Test Setup   Launch Browser, Naviagte To Url And Click SignIN
Test Teardown   Close Browser
Test Template   AddToBag Test
*** Test Cases ***
LoginTest_${test_case}

*** Keywords ***
AddToBag Test
    [Arguments]  ${email}  ${password}  ${expected}  ${house}  ${street}  ${Name}  ${Number}
    Input Text    name=emailMobile    ${email}
    Click Element    xpath=//*[@type='submit']
    Input Password    name=password    ${password}
    Click Element    xpath=//button[@class='button big fill full small-button-seperator ']
    Mouse Over    xpath=//a[text()='brands']
    Click Element    xpath=//*[@id='brandSearchBox']
    Mouse Over    xpath=//a[text()='G']
    Click Element    partial link=GAIA Aromatherapy
    Click Element    xpath=//*[@alt="GAIA Aromatherapy Oil Control Gel"]
    Switch Window   New
    ${ele}  Get WebElement    xpath=//span[text()='Add to Bag']
    Execute Javascript  arguments[0].click()  ARGUMENTS   ${ele}
    Click Element    xpath=//button[@type='button' and @class='css-g4vs13']
    Sleep  5s
    Select Frame    xpath=//iframe[@src='/mobileCartIframe?ptype=customIframeCart']
    Element Should Contain    xpath=//*[text()='Bag']    ${expected}
    Sleep  5s
    Click Element    xpath=//span[@class=' css-1l4d0ex e171rb9k3']
    Sleep  5s
    Click Element    xpath=//p[text()='Add New Address']
    Input Text    xpath=//*[@placeholder='Pincode']    577427
    Input Text    xpath=//*[@placeholder='House/ Flat/ Office No.']    ${house}
    Input Text    xpath=//*[@placeholder='Road Name/ Area /Colony']    ${street}
    Input Text    xpath=//*[@placeholder='Name']    ${Name}
    Input Text    xpath=//*[@placeholder='Phone']    ${Number}
    Click Element    xpath=//button[text()='Ship to this address']

