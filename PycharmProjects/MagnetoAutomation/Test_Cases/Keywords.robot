*** Keywords ***
Login To Application(Invalid)
    Maximize Browser Window
    Element Text Should Be      xpath:/html/body/div[1]/div       This is a demo store. No orders will be fulfilled.
    click link  xpath:/html/body/div[2]/header/div[1]/div/ul/li[2]/a
    Reload Page
    input text  id:email    ${invalid_email}
    input text  id:pass     ${invalid_pass}
    click element   xpath://*[@id="send2"]

Login To Application(Valid)
    Maximize Browser Window
    Element Text Should Be      xpath:/html/body/div[1]/div       This is a demo store. No orders will be fulfilled.
    click link  xpath:/html/body/div[2]/header/div[1]/div/ul/li[2]/a
    Reload Page
    input text  id:email    ${valid_emai}
    input text  id:pass     ${valid_pass}
    click element   xpath://*[@id="send2"]

Verify Texts(Invalid Scenario)
    Element Text Should Be    xpath://*[@id="login-form"]/fieldset/div[1]   If you have an account, sign in with your email address.
    Element Text Should Be    xpath://*[@id="block-customer-login-heading"]     Registered Customers
    Element Text Should Be    xpath://span[text()="Customer Login"]     Customer Login
    Element Text Should Be    xpath://*[@id="maincontent"]/div[2]/div[2]/div/div/div    The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.
    Element Text Should Be    xpath://*[@id="block-new-customer-heading"]   New Customers


Verify Texts(Valid Scenario)
    Title Should Be     Home Page
    Page Should Contain Image   xpath:/html/body/div[2]/header/div[2]/a/img
    Element Text Should Be   xpath://a[@class="action showcart"]    My Cart
    Capture Element Screenshot      xpath://a[@class="action showcart"]     C:/Users/ankit/PycharmProjects/MagnetoAutomation/Test_Cases/img1.png
    Element Should Be Visible   xpath://span[@class="action more button"]

Search For Items
    Input Text      ${search_box}     ${search_text1}
    Press Keys  xpath://input[@id="search"]     ENTER
    Element Text Should Be  xpath:/html/body/div[2]/main/div[1]/h1/span     Search results for: '${search_text1}'
    Capture Element Screenshot      xpath:/html/body/div[2]/main/div[1]/h1/span     C:/Users/ankit/PycharmProjects/MagnetoAutomation/Test_Cases/img2.png
    sleep   5
    Clear Element Text  ${search_box}
    Input Text      ${search_box}     ${search_text2}
    Press Keys  xpath://input[@id="search"]     ENTER
    Element Text Should Be  xpath:/html/body/div[2]/main/div[1]/h1/span     Search results for: '${search_text2}'
    Capture Element Screenshot      xpath:/html/body/div[2]/main/div[1]/h1/span     C:/Users/ankit/PycharmProjects/MagnetoAutomation/Test_Cases/img3.png
    sleep   5
    Element Text Should Be  xpath:/html/body/div[2]/main/div[3]/div[3]/div[1]/div[2]    You have no items to compare.
    Capture Element Screenshot      xpath:/html/body/div[2]/main/div[3]/div[3]/div[1]/div[2]     C:/Users/ankit/PycharmProjects/MagnetoAutomation/Test_Cases/img4.png



Logout From Application
    Select From List By Index    xpath://li//span//button[@data-action="customer-menu-toggle"][1]    2
    Sleep   5