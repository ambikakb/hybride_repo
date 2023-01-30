*** Settings ***
Library  AppiumLibrary
*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub    platformName=android
    ...   deviceName=Infinix
    ...    appPackage=com.mobile.simplilearn
    ...    appActivity=com.mobile.newArch.module.splash.SplashScreenActivity
    ...    noReset=true
    Set Appium Timeout   30s
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text,'SIGN IN']
    Click Element    xpath=//android.widget.Button[@text,'SIGN IN']
    Run Keyword And Ignore Error      Wait Until Page Contains Element       xpath=//android.widget.TextView[@text='Skip']
    Run Keyword And Ignore Error    Click Element    xpath=//android.widget.TextView[@text='Skip']
    Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='GOT IT']
    Run Keyword And Ignore Error    Click Element    xpath=//android.widget.Button[@text='GOT IT']
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@resource-id='com.mobile.simplilearn:id/iv_hf_account']
    Click Element    xpath=//android.widget.ImageView[@resource-id='com.mobile.simplilearn:id/iv_hf_account']
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='SIGN IN']
    Click Element    xpath=//android.widget.Button[@text='SIGN IN']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in with email']
    Click Element    xpath=//android.widget.TextView[@text='Sign in with email']
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Email']
    Input Text    xpath=//android.widget.EditText[@text='Email']    ambikakb181@gmail.com
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Password']
    Input Text    xpath=//android.widget.EditText[@text='Password']    Akb@#123
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text,'SIGN IN']
    Click Element    xpath=//android.widget.Button[@text,'SIGN IN']
    ${count}   Get Matching Xpath Count   xpath=//*[@text='Introduction to IoT']
    WHILE    ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}   Get Matching Xpath Count   xpath=//*[@text='Introduction to IoT']
     END
     Wait Until Page Contains Element    xpath=//*[@text='Introduction to IoT']
     Click Element    xpath=//*[@text='Introduction to IoT']
    ${count}   Get Matching Xpath Count   xpath=//*[@text='EXPLORE THIS PROGRAM']
    WHILE    ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}   Get Matching Xpath Count   xpath=//*[@text='EXPLORE THIS PROGRAM']
    END
    Wait Until Page Contains Element    xpath=//*[@text='EXPLORE THIS PROGRAM']
    Click Element    xpath=//*[@text='EXPLORE THIS PROGRAM']
    Wait Until Page Contains Element    xpath=//*[contains(@text,'UI/UX Design Expert')]
    Element Should Contain Text   xpath=//*[contains(@text,'UI/UX Design Expert')]      UI/UX Design Expert
    sleep  5s
    Close Application