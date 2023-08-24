*** Settings ***

Library  SeleniumLibrary
Resource    Keywords.robot
Resource    Variables.robot


*** Test Cases ***
Login Test(Invalid)
    Open Browser   ${url}   ${browser}
    Login To Application(Invalid)
    Verify Texts(Invalid Scenario)
    Close Browser

Login Test(Valid)
    [tags]  valid
    Open Browser   ${url}   ${browser}
    Login To Application(Valid)
    Verify Texts(Valid Scenario)
    Search For Items
    Logout From Application
    Close Browser






