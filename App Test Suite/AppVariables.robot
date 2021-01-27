***Variables***

${Language}    EN
${Staging}    CZ

@{GooglePixel4_11.0}    http://localhost:4723/wd/hub	    platformName=Android    deviceName=emulator-5554    appPackage=nl.designs.bapacho    appActivity=nl.designs.bapacho.MainActivity      automationName=UiAutomator2


@{RegisterCredentials}    testemailcustomer001@yopmail.com    bapachocustomerpwd
@{LoginCredentials}      testemailcustomer001@gmail.com    bapachocustomerpwd

${SearchAddress_CZ}        Prague

${Favorite_ICON_EN}     xpath=//android.view.View[@text='FAVOURITES']
${NearME_ICON_EN}    xpath=//android.view.View[@text='NEAR ME']
${Delivery_ICON_EN}    xpath=//android.view.View[@text='DELIVERY']
${Pickup_ICON_EN}        xpath=//android.view.View[@text='PICKUP']
${Profile_ICON_EN}       xpath=//android.view.View[@text='PROFILE']


 

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

${Login_textfield_emailaddress}    xpath=//android.view.View[@index=3]//android.view.View[@index=3]//android.view.View[@index=3]//android.widget.EditText[contains(@resource-id,'username')]
${Login_textfield_password}    xpath=//android.view.View[@index=4]//android.widget.EditText[contains(@resource-id,'password')]
${Show_password}      xpath=//android.view.View[@index=4]//android.view.View[@index=0]
${Signup_Button}    xpath=//android.widget.Button[@text='Sign Up']
${IntroLogin_Button}     xpath=//android.widget.Button[@text='Login']

#${denylocation_login}    xpath=//android.widget.Button[contains(@resource-id,'com.android.packageinstaller:id/permission_deny_button')]

${FBLogin_Button}     xpath=//android.widget.Button[contains(@resource-id,'loginWithFacebookBtn')]
${Login_Button}    xpath=//android.view.View[@index=6]//android.widget.Button[@text='Login']
${Continue_Button}    xpath=//android.view.View[@index=3]//android.widget.Button[@text='Continue']
${Onboarding_addressbar}    xpath=//android.widget.EditText[contains(@resource-id,'onboardingAddress')]
${Start_Button}        xpath=//android.widget.Button[@text='Start']

${Sendme_forgotpasswordlink}    xpath=//android.widget.Button[@text='Send me a link']
${OK_Button}    xpath=//android.widget.Button[@text='OK']

#Search
${Search_Button}    xpath=//android.view.View[@text='Search']
${textfield_AddressBar}      xpath=//android.widget.EditText[contains(@resource-id,'locationProducts')]
${First_Search_Result_CZ}    xpath=//android.view.View[@text='Prague, Czechia']
${First bakery from Result_CZ}      Nisha's Automated Bakery001

${edit}    xpath=//android.view.View[contains(@resource-id,'currentLocation')]//android.view.View[@text='Edit']
${getcurrentlocation_Arrow}    xpath=//android.view.View[@index=2]//android.view.View[@index=2]//android.view.View[@index=1]//android.widget.Button[@index=0]
${ClearSearch_Addressbar}    xpath=//android.view.View[@index=2]//android.view.View[@index=2]//android.view.View[@index=1]//android.widget.Button[@index=1]

${DeliveryCheckbox}      xpath=//android.view.View[@index=11]
${PickupCheckbox}        xpath=//android.view.View[@index=12]
${OnlinePaymentCheckbox}     xpath=//android.view.View[@index=16] 
${NowOpenCheckbox}      xpath=//android.view.View[@index=17] 



#Bakery Display Page

${Mark as favorite}    xpath=//android.view.View[@text='MARK AS FAVORITE']
${Product Category}    xpath=//android.view.View[@text='Beverages']
${ProductName}    xpath=//android.view.View[@text='Apple Juice']
${AddtoCart}    xpath=//android.view.View[contains(@resource-id,'addToCartRow')]//android.view.View[@index=2]//android.view.View[@index=2]
${Close_Button}    xpath=//android.webkit.WebView[@text='Bapacho']//android.view.View[@index=0]//android.view.View[@index=0]//android.view.View[@index=0]//android.view.View[@index=0]//android.view.View[@index=0]
${'i'_button}      xpath=//android.view.View[contains(@resource-id,'moreInfoBtn')]
${kebab icon}    xpath=//android.view.View[@index=2]//android.view.View[@index=0]//android.view.View[@index=0]//android.view.View[@index=0]//android.view.View[@index=3]//android.view.View[@index=0] 
${callshop}      xpath=//android.view.View[@text='Call shop']
${OpeninMaps}    xpath=//android.view.View[@text='Open in maps']
${CopyLink}    xpath=//android.view.View[@text='Copy link']
${send message}    xpath=//android.view.View[@text='Send as a text message']
${Share with Whatsapp}    xpath=//android.view.View[@text='Share with Whatsapp']
${Send in email}    xpath=//android.view.View[@text='Send in an email']

${+ Button}    xpath=//android.view.View[contains(@resource-id,'productsList')]//android.view.View[@index=5]//android.view.View[@index=1]//android.view.View[@index=1]//android.view.View[@index=2]//android.view.View[@index=0]
${- Button}    xpath=//android.view.View[contains(@resource-id,'productsList')]//android.view.View[@index=5]//android.view.View[@index=1]//android.view.View[@index=1]//android.view.View[@index=0]//android.view.View[@index=0]
${Type quantity}    xpath=//android.view.View[contains(@resource-id,'productsList')]//android.view.View[@index=5]//android.view.View[@index=1]//android.view.View[@index=1]//android.view.View[@index=0]//android.widget.EditText[@index=1]


#BASKET

${YourBasket}    xpath=//android.view.View[contains(@resource-id,'checkoutButtonHolder')]//android.view.View[@index=0]
${Order_Button}    xpath=//android.widget.Button[contains(@resource-id,'orderNowButton')]

#CHECKOUT PAGE

${Delivery}    xpath=//android.widget.RadioButton[contains(@resource-id,'optionsRadios2')]
${Choose_Date_textbox}     xpath=//android.widget.Spinner[@text='Today']
${Choose a date}    xpath=//android.widget.CheckedTextView[@index=1]
${Choose_Time_textbox}     xpath=//android.widget.Spinner[@index=0]
${Choose a time}    xpath=//android.widget.CheckedTextView[@index=1]
${Firstname}    xpath=//android.widget.EditText[contains(@resource-id,'firstname')]
${Lastname}     xpath=//android.widget.EditText[contains(@resource-id,'lastname')]
${emailaddress}    xpath=//android.widget.EditText[contains(@resource-id,'email')]
${phone}    xpath=//android.widget.EditText[contains(@resource-id,'phone')]

${Cashpay_radioBtn}    xpath=//android.widget.RadioButton[contains(@resource-id,'paymentMethod6')]
${Cardpay_radioBtn}    xpath=//android.widget.RadioButton[contains(@resource-id,'paymentMethod7')]
${OnlinePay_radioBtn}  xpath=//android.widget.RadioButton[contains(@resource-id,'paymentMethod5')]


${cardNumber}      xpath=//android.widget.FrameLayout[contains(@resource-id,'com.android.chrome:id/action_bar_root')]//android.widget.EditText[contains(@resource-id,'cardNumber')]
${cardExpiry}     xpath=//android.widget.EditText[contains(@resource-id,'cardExpiry')]
${cardCvc}     xpath=//android.widget.EditText[contains(@resource-id,'cardCvc')]
${billingName}    xpath=//android.widget.EditText[contains(@resource-id,'billingName')]
${PayButton}    xpath=//android.widget.Button[@index=7]

${Goto Previous}    xpath=//android.view.View[@text='Previous page']
${CloseBtn}    xpath=//android.widget.Button[@text='Close']
${Proceed to Payment}     xpath=//android.view.View[@index=1]//android.view.View[contains(@resource-id,'paymentButtonHolder')]//android.widget.Button[@text='Proceed to payment']
${Ordercomplete_Close_Button}        xpath=//android.widget.Button[@text='Close']

#FAVORITES
${First favorite bakery}     xpath=//android.view.View[contains(@resource-id,'supplierList')]//android.view.View[@index=0]




#PROFILE
${LoginButton_Profile}    xpath=//android.widget.Button[contains(@resource-id,'loginButton')]
${Logout_Button}       xpath=//android.widget.Button[contains(@resource-id,'logOutButton')]
${MyAccount}        xpath=//android.view.View[@text='My account']
${editlastname}    Bala
${Save_Button}    xpath=//android.widget.Button[@text='Save']

${Addresses}    xpath=//android.view.View[@text='Addresses']
${Add address}    xpath=//android.view.View[@text='Add address']
${addressline1}    xpath=//android.widget.EditText[contains(@resource-id,'address')]
${addressline2}    xpath=//android.widget.EditText[contains(@resource-id,'addressLine2')]
${postalcode}    xpath=//android.widget.EditText[contains(@resource-id,'postal')]
${city}    xpath=//android.widget.EditText[contains(@resource-id,'city')]
${Address_Save_button}    xpath=//android.view.View[@index=7]//android.view.View[@text='Save']

${Addaddressline1}    Justine de Gouwerhof
${Addaddressline2}    54
${Addpostalcode}    2011GP
${Addcity}    Haarlem

${Orders}    xpath=//android.view.View[@text='Orders']
${First Order in list}     xpath=//android.view.View[contains(@resource-id,'ordersList')]//android.view.View[@index=0]
${Reorder}    xpath=//android.view.View[@text='Re order']

${Support}       xpath=//android.view.View[@text='Support']
${FAQ}    xpath=//android.view.View[@text='FAQ']
${ContactSupport}    xpath=//android.view.View[@text='Contact support']
${Supporttextbox}    xpath=//android.widget.EditText[contains(@resource-id,'comments')]
${SendBtn}    xpath=//android.widget.Button[@text='Send']
${TermsandCondition}    xpath=//android.view.View[@text='Terms and conditions']
${PrivacyPolicy}    xpath=//android.view.View[@text='Privacy policy']