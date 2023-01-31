*** Settings ***
Documentation   This file contains Testcase related to select items using presskeys
...  and adding those to addTobag
Resource    ../resource/base/common_functionalities.resource
Test Setup   Launch Browser, Naviagte To Url And Click SignIN
Test Teardown   Close Browser


*** Test Cases ***
valid Add To Bag
    Input Text    name=emailMobile    ambikabkammar@gmail.com
    Click Element    xpath=//*[@type='submit']
    Input Password    name=password    Demo@#123
    Click Element    xpath=//button[@class='button big fill full small-button-seperator ']
    Click Element    XPATH=//*[@name='search-suggestions-nykaa']
    Input Text    XPATH=//*[@name='search-suggestions-nykaa']    sweets
    Press Keys    XPATH=//*[@name='search-suggestions-nykaa']    ENTER
    Sleep    5s
    Click Element    xpath=//*[@alt="Nykaa Wanderlust Shower Gel"]
    Sleep    5s
    Switch Window    New
    Select From List By Label    xpath=//select[@class='css-2t5nwu']   Country Rose
    Sleep    5s
    Click Element    xpath=//span[contains(text(),'Add to Bag')]
    #${ele}  Get WebElement    xpath=//span[text()='Add to Bag']
    #Execute Javascript  arguments[0].click()  ARGUMENTS   ${ele}
    Click Element    xpath=//button[@type='button' and @class='css-g4vs13']
    Select Frame    xpath=//iframe[@src='/mobileCartIframe?ptype=customIframeCart']
    Sleep  5s
    Click Element    xpath=//span[@class=' css-1l4d0ex e171rb9k3']
    Sleep  5s
    Click Element    xpath=//p[text()='Add New Address']
    Input Text    xpath=//*[@placeholder='Pincode']    577427
    Input Text    xpath=//*[@placeholder='House/ Flat/ Office No.']    House
    Input Text    xpath=//*[@placeholder='Road Name/ Area /Colony']    kammar
    Input Text    xpath=//*[@placeholder='Name']    Ambika
    Input Text    xpath=//*[@placeholder='Phone']    6764578723
    Click Element    xpath=//button[text()='Ship to this address']
    Element Should Contain    xpath=//p[contains(text(),'Choose payment method')]    Choose payment method
