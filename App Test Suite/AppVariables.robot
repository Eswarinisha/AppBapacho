***Variables***

${Language}    EN
${Staging}    CZ

@{GooglePixel4_11.0}    http://localhost:4723/wd/hub	    platformName=Android    deviceName=emulator-5554    appPackage=nl.designs.bapacho    appActivity=nl.designs.bapacho.MainActivity      automationName=UiAutomator2


@{RegisterCredentials}    testemilcustomer001@yopmail.com    bapachocustomerpwd
@{LoginCredentials}      testemailcustomer001@gmail.com    bapachocustomerpwd

${SearchAddress_CZ}        Prague

${Favorite_ICON_EN}     xpath=//android.view.View[@text='FAVOURITES']

${NearME_ICON_EN}    xpath=//android.view.View[@text='NEAR ME']
${Delivery_ICON_EN}    xpath=//android.view.View[@text='DELIVERY']


#INTRO PAGE
${IntroNext_Button_EN}    xpath=//android.widget.Button[@text='Next']
${IntroSkip_Button_EN}    xpath=//android.widget.Button[@text='Skip']
${IntroStartUsingBapacho_Button_EN}    xpath=//android.widget.Button[@text='Start using Bapacho']
${Skip_Button}    xpath=//android.widget.Button[@text='Skip']
${ChooseStaging}     xpath=//android.widget.Spinner[@index=0]
${ChooseStaging_CZ}    xpath=//android.widget.CheckedTextView[@index=2]

${Next_Button_EN}    xpath=//android.widget.Button[@text='Next']

${AllowDeviceLocation}    com.android.packageinstaller:id/permission_allow_button
${DenyDeviceLocation}     com.android.packageinstaller:id/permission_deny_button
${Dontaskagain_Chkbox}   com.android.packageinstaller:id/do_not_ask_checkbox
${OffNotification_ToggleBtn}    xpath=//android.view.View[@index=7]//android.view.View[@index=1]
${OffLocationPermission_ToggleBtn}        xpath=//android.view.View[@index=11]//android.view.View[@index=1]

#LOGIN

${textfield_emailaddress}   xpath=//android.widget.EditText[contains(@resource-id,'usernameE')]
${textfield_password}    xpath=//android.widget.EditText[contains(@resource-id,'passwordE')]

${Login_textfield_emailaddress}    xpath=//android.view.View[@index=3]//android.widget.EditText[contains(@resource-id,'')]
${Login_textfield_password}    xpath=//android.view.View[@index=4]//android.widget.EditText[contains(@resource-id,'password')]
${Show_password}      xpath=//android.view.View[@index=4]//android.view.View[@index=0]

${Signup_Button}    xpath=//android.widget.Button[@text='Sign Up']
${Login_Button}     xpath=//android.widget.Button[@text='Login']


#Search

${textfield_AddressBar}      xpath=//android.widget.EditText[contains(@resource-id,'locationProducts')]
${First_Search_Result}    xpath=//android.view.View[@text='Prague, Czechia']
${Search_Button}    xpath=//android.view.View[@text='Search']
${First bakery from Result_CZ}      Nisha's Automated Bakery001

#Bakery Display Page

${Mark as favorite}    xpath=//android.view.View[@text='MARK AS FAVORITE']
${Product Category}    xpath=//android.view.View[@text='Beverages']
${ProductName}    xpath=//android.view.View[@text='Apple Juice']
${AddtoCart}    xpath=//android.view.View[contains(@resource-id,'addToCartRow')]//android.view.View[@index=2]//android.view.View[@index=2]
${Close_Button}    xpath=//android.webkit.WebView[@text='Bapacho']//android.view.View[@index=0]//android.view.View[@index=0]//android.view.View[@index=0]//android.view.View[@index=0]//android.view.View[@index=0]

#BASKET

${YourBasket}    xpath=//android.view.View[contains(@resource-id,'checkoutButtonHolder')]//android.view.View[@index=0]
${Order_Button}    xpath=//android.widget.Button[contains(@resource-id,'orderNowButton')]

#CHECKOUT PAGE

${Choose_Date_textbox}     xpath=//android.widget.Spinner[@text='Today']
${Choose a date}    xpath=//android.widget.CheckedTextView[@index=1]
${Choose_Time_textbox}     xpath=//android.widget.Spinner[@index=0]
${Choose a time}    xpath=//android.widget.CheckedTextView[@index=1]
${Firstname}    xpath=//android.widget.EditText[contains(@resource-id,'firstname')]
${Lastname}     xpath=//android.widget.EditText[contains(@resource-id,'lastname')]
${emailaddress}    xpath=//android.widget.EditText[contains(@resource-id,'email')]
${phone}    xpath=//android.widget.EditText[contains(@resource-id,'phone')]

${Cashpay_radioBtn}    xpath=//android.widget.RadioButton[contains(@resource-id,'paymentMethod6')]
${Proceed to Payment}     xpath=//android.view.View[@index=1]//android.view.View[contains(@resource-id,'paymentButtonHolder')]//android.widget.Button[@text='Proceed to payment']




