*** Settings ***
Documentation  Present some information about testcase
Library  Selenium2Library

*** Variables ***


*** Test Cases ***
adding Product to cart testcase
    [Documentation]  This is test case
    [Tags]  Smoke
    Open Browser  http://automationpractice.com/index.php  chrome
    Maximize Browser Window
    ${AllLinksCount}=  Get Element Count  xpath=//a
    Log To Console  ${AllLinksCount}
    Click Element  xpath=//*[@id="header"]/div[3]/div/div/div[3]/div/a
    Wait Until Page Contains  Your shopping cart is empty.
    Click Link  css=#block_top_menu > ul > li:nth-child(1) > a
    Click Link  css=#block_top_menu > ul > li:nth-child(3) > a
    Scroll Page To Location    0    700
    Sleep  3s
    Click Link  xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a
    Scroll Page To Location    0    200
    Click Element  xpath=//*[@id="add_to_cart"]/button/span
    Wait Until Page Contains  There is 1 item in your cart.
    Go Back
    #Click Link  Proceed to checkout
    #Click Element  xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span/i
    #Click Element  xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span
    Scroll Page To Location  200  0
    Wait Until Page Does Not Contain  Your shopping cart is empty.

*** Keywords ***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})



    #Close Browser
