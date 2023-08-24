*** Settings ***
Library     SeleniumLibrary
Resource    Variables.robot


*** Test Cases ***

Radio Button Testing
    Open Browser    ${url_radio_button}  ${browser}
    Maximize Browser Window
    Delete All Cookies
    Set Selenium Speed  2seconds
    # Select Radio Buttons
#    Select Radio Button     gender  male
#    Select Radio Button     gender  female
#    #Select Checkbox
#    Select Checkbox     Automation
#    Select Checkbox     Performance
#    Unselect Checkbox   Performance
#    #Select Values from Dropdown
#    Select from list by label   testingDropdown     Database Testing
#    Select from list by index   testingDropdown     2
#    Select from list by value   testingDropdown     Automation
    #Click with Mouse
    Click Element    //button[@onclick="generateConfirmBox()"]
    #Handle Alerts
    Handle Alert    accept
    Click Element    //button[@onclick="generateConfirmBox()"]
    Handle Alert    dismiss

#    #Drag and Drop
#    Drag and Drop   xpath://img[@src="https://artoftesting.com/wp-content/uploads/2019/12/drag-and-drop-demo.jpg"]    xpath://*[@id="targetDiv"]


