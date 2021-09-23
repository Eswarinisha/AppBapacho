*** Settings ***
Library    AppiumLibrary

Resource    AndroidApp_Variables.robot


***Keyword***

#INTRO
Open Bapacho app     
    Open Application    	 http://localhost:4723/wd/hub 	    platformName=Android    deviceName=emulator-5554    appPackage=nl.designs.bapacho    appActivity=nl.designs.bapacho.MainActivity      automationName=UiAutomator2
    Sleep   10  
    Capture Page Screenshot 


Open App and Read intro
      
    Open Bapacho app   
    Wait Until Page Contains Element    ${IntroNext_Button1_${Language}}
    Sleep    2
    Capture Page Screenshot
    Click Element    ${IntroNext_Button1_${Language}}  
    Wait Until Page Contains Element    ${IntroNext_Button2_${Language}}
    Sleep    2
    Capture Page Screenshot
    Click Element    ${IntroNext_Button2_${Language}}  
    Wait Until Page Contains Element    ${IntroNext_Button3_${Language}}
    Sleep    2
    Click Element    ${IntroNext_Button3_${Language}}  
    Wait Until Page Contains Element     ${IntroStartUsingBapacho_Button_${Language}}
    Sleep    2  
    Capture Page Screenshot  
    Click Element     ${IntroStartUsingBapacho_Button_${Language}} 
    Wait Until Page Contains Element    ${ChooseStaging}     
    Sleep    2
    Capture Page Screenshot

Open App and Skip intro
    Open Bapacho app  
    Wait Until Page Contains Element    ${IntroSkip_Button_${Language}} 
    Capture Page Screenshot
    Click Element    ${IntroSkip_Button_${Language}} 
    Wait Until Page Contains Element    ${ChooseStaging}  
    Capture Page Screenshot
    
Choose Staging
    Click Element   ${ChooseStaging} 
    Sleep    2    
    Click Element    ${ChooseStaging_${Staging}}
    Sleep    2 
   
Allow Device Location
    # ${element_size}=    Get Element Size     ${Next_Button_EN} 
    # ${element_location}=    Get Element Location     ${Next_Button_EN} 
    Swipe               1.5   2176.4  1.5  1935.6  1000
    Sleep  4
    Click Element    xpath=//android.view.View[@index=13]  
    Sleep    5 
    Click Element    ${AllowDeviceLocation} 
    Sleep    2  
      
Deny Device Location  
   Swipe               1.5   2176.4  1.5  1935.6  1000
    Sleep  4
    Click Element    xpath=//android.view.View[@index=13]  
    Sleep    5 
    Click Element    ${DenyDeviceLocation} 
    Sleep    4  
    Click Element    xpath=//android.view.View[@index=13]
    Sleep    2  
    Run Keyword And Continue On Failure    Click Element     ${Dontaskagain_Chkbox} 
    Run Keyword And Continue On Failure    Click Element         ${DenyDeviceLocation} 
    Sleep    4
    Run Keyword And Continue On Failure     Click Element    xpath=//android.view.View[@index=13]  
    

Off Push Notification 
    Click Element    ${OffNotification_ToggleBtn}
    Click Element    ${OffLocationPermission_ToggleBtn}  
    Capture Page Screenshot 
    Swipe               1.5   2176.4  1.5  1935.6  1000
    Sleep  4  
    Click Element    xpath=//android.view.View[@index=13]
    Sleep    5 
    Capture Page Screenshot
     

#App ICONS

View Favorites
    Click Element    ${Favorite_ICON_${Language}} 
    Sleep    2    
    Capture Page Screenshot
    
View Delivery
    Click Element    ${Delivery_ICON_${Language}}
    Sleep    2       
    Capture Page Screenshot    
    
View Pickup
    Click Element    ${Pickup_ICON_${Language}}
    Sleep    2       
    Capture Page Screenshot 
    
View NearMe
    Click Element    ${NearME_ICON_${Language}}
    Sleep    2       
    Capture Page Screenshot 


#LOGIN
Skip Login
    Sleep    2
    Wait Until Page Contains Element    ${textfield_emailaddress}    
    Click Element   ${Skip_Button}  
    Sleep    4 
    Capture Page Screenshot

User Email Signup
    Wait Until Page Contains Element    ${textfield_emailaddress}    
    Input Text    ${textfield_emailaddress}    ${RegisterCredentials}[0] 
    Input Text    ${textfield_password}     ${RegisterCredentials}[1] 
    Click Element    ${Signup_Button}
    Sleep    2 
    Capture Page Screenshot 
    
User SignUp with existing account
    Wait Until Page Contains Element    ${textfield_emailaddress}    
    Input Text    ${textfield_emailaddress}    ${LoginCredentials}[0] 
    Input Text    ${textfield_password}     ${LoginCredentials}[1] 
    Click Element    ${Signup_Button}
    Sleep    2 
    Capture Page Screenshot 
    
   
User Email SignIn  
    Click Element    ${IntroLogin_Button} 
    Sleep    3 
    Wait Until Page Contains Element     ${Login_textfield_emailaddress}
    # Click Element    ${Login_textfield_emailaddress}
    # Is Keyboard Shown
    Input Text    ${Login_textfield_emailaddress}     ${LoginCredentials}[0] 
    Input Text   ${Login_textfield_password}     ${LoginCredentials}[1] 
    Click Element    ${Show_password}
    Sleep    2
    Click Element    ${Login_Button} 
    Sleep    4 
    Capture Page Screenshot  
    #Page Should Contain Text    Welcome 

Facebook Login   
    Swipe               1.5   2176.4  1.5  1900  1000
    Click Element    ${FBLogin_Button} 
    Sleep    5
    Capture Page Screenshot    
   

Continue Button alert   
    Click Element    ${Continue_Button}      
        
User denies location
    Sleep    4 
    Capture Page Screenshot 
    Run Keyword And Continue On Failure    Click Element     ${Dontaskagain_Chkbox} 
    Sleep    4    
     Run Keyword And Continue On Failure     Click Element     ${DenyDeviceLocation} 
    Sleep    4 
    Capture Page Screenshot 
    Click Element    ${Continue_Button}
    
Type Onboarding address 
    Sleep    2 
    Capture Page Screenshot 
    Clear Text   ${Onboarding_addressbar}
    Input Text    ${Onboarding_addressbar}    ${SearchAddress_CZ}
    Capture Page Screenshot    
    Sleep    2    
    Click Element    ${First_Search_Result_${Staging}}
    Run Keyword And Continue On Failure    Hide Keyboard    
    Click Element    ${Start_Button}

Forgot password
    Sleep    2 
    Capture Page Screenshot 
    Click Element    ${IntroLogin_Button} 
    Sleep    2 
    Capture Page Screenshot 
    Click Element    ${Sendme_forgotpasswordlink}
    Sleep    2 
    Capture Page Screenshot 
    Page Should Contain Text    Error
    Click Element    ${OK_Button}  
    Wait Until Page Contains Element     ${Login_textfield_emailaddress}
    # Click Element    ${Login_textfield_emailaddress}
    # Is Keyboard Shown
    Input Text    ${Login_textfield_emailaddress}     ${LoginCredentials}[0] 
    Click Element    ${Sendme_forgotpasswordlink}
    Sleep    2 
    Capture Page Screenshot
    Page Should Contain Text    We have sent you a recovery link.  
    Capture Page Screenshot      
    

#Search

Type Address and Search
     Sleep    2  
    Clear Text    ${textfield_AddressBar}
    Sleep    2 
    Input Text    ${textfield_AddressBar}     ${SearchAddress_${Staging}}
    Capture Page Screenshot    
    Sleep    2    
    Click Element    ${First_Search_Result_${Staging}}
    Run Keyword And Continue On Failure    Hide Keyboard         
    Click Element    ${Search_Button}
    Capture Page Screenshot   
    Sleep    7
       
Select a bekery from Near me list
   #Click Element    ${Delivery_ICON_${Language}}
    Sleep    2       
    Page Should Contain Text   ${First bakery from Result_${Staging}}
    Click Text    ${First bakery from Result_${Staging}}      
    Sleep    2 
    Capture Page Screenshot  

Get current location in search bar
    Click Element    ${edit}
    Sleep    2
    Capture Page Screenshot 
    Click Element    ${ClearSearch_Addressbar} 
     Sleep    2
    Capture Page Screenshot 
    Click Element    ${getcurrentlocation_Arrow}
    Click Element    ${First_Search_Result_${Staging}}
    Run Keyword And Continue On Failure    Hide Keyboard         
    Click Element    ${Search_Button}
    Capture Page Screenshot   
    Sleep    7

Search by distance  
    Click Element    ${edit}
    Sleep     2 
    Clear Text    ${textfield_AddressBar}
    Sleep    2 
    Input Text    ${textfield_AddressBar}     ${SearchAddress_${Staging}}
    Capture Page Screenshot    
    Sleep    2    
    Click Element    ${First_Search_Result_${Staging}}
    Run Keyword And Continue On Failure    Hide Keyboard 
     Sleep    2   
    Click Element At Coordinates    375    1584
    Capture Page Screenshot    
    Click Element    ${Search_Button}
    Capture Page Screenshot   
    Sleep    7

Search by Pickup filter
    Click Element    ${edit}
    Sleep     2 
    Clear Text    ${textfield_AddressBar}
    Sleep    2 
    Input Text    ${textfield_AddressBar}     ${SearchAddress_${Staging}}
    Capture Page Screenshot    
    Sleep    2    
    Click Element    ${First_Search_Result_${Staging}}
    Run Keyword And Continue On Failure    Hide Keyboard 
    Sleep    2   
    Click Element    ${DeliveryCheckbox}  
    Sleep    2   
    Capture Page Screenshot    
    Click Element    ${Search_Button}
    Capture Page Screenshot   
    Sleep    7
    

Search by Delivery filter
    Click Element    ${edit}
    Sleep     2 
    Clear Text    ${textfield_AddressBar}
    Sleep    2 
    Input Text    ${textfield_AddressBar}     ${SearchAddress_${Staging}}
    Capture Page Screenshot    
    Sleep    2    
    Click Element    ${First_Search_Result_${Staging}}
    Run Keyword And Continue On Failure    Hide Keyboard 
    Sleep    2   
    Click Element    ${PickupCheckbox}  
    Sleep    2   
    Capture Page Screenshot    
    Click Element    ${Search_Button}
    Capture Page Screenshot   
    Sleep    7

Search by Online Payment filter
    Click Element    ${edit}
    Sleep     2 
    Clear Text    ${textfield_AddressBar}
    Sleep    2 
    Input Text    ${textfield_AddressBar}     ${SearchAddress_${Staging}}
    Capture Page Screenshot    
    Sleep    2    
    Click Element    ${First_Search_Result_${Staging}}
    Run Keyword And Continue On Failure    Hide Keyboard 
    Sleep    2   
    Click Element    ${OnlinePaymentCheckbox}  
    Sleep    2   
    Capture Page Screenshot    
    Click Element    ${Search_Button}
    Capture Page Screenshot   
    Sleep    7
    
Search by Now Open filter
    Click Element    ${edit}
    Sleep     2 
    Clear Text    ${textfield_AddressBar}
    Sleep    2 
    Input Text    ${textfield_AddressBar}     ${SearchAddress_${Staging}}
    Capture Page Screenshot    
    Sleep    2    
    Click Element    ${First_Search_Result_${Staging}}
    Run Keyword And Continue On Failure    Hide Keyboard 
    Sleep    2   
    Click Element    ${NowOpenCheckbox}  
    Sleep    2   
    Capture Page Screenshot    
    Click Element    ${Search_Button}
    Capture Page Screenshot   
    Sleep    7



#Bakery Display Page
    
Mark as Favorite  
    Click Element    ${Mark as favorite}
    Sleep    2    
    Capture Page Screenshot  
    
Choose Product Category
    Click Element    ${Product Category}
    Sleep    2    
    Capture Page Screenshot  
    
View product information
    Page Should Contain Element    ${ProductName}     
    Click Element    ${ProductName} 
    Sleep    2    
    Capture Page Screenshot  
    
Show bakery information 'i'
    Click Element    ${'i'_button} 
    Sleep    2 
    
Add quantity from 'i'   
    Capture Page Screenshot  
    Swipe               1.5   2176.4  1.5  1900  1000
    Swipe               1.5   2176.4  1.5  1900  1000
    Capture Page Screenshot 
    Swipe               1.5   2176.4  1.5  1900  1000   
    Swipe               1.5   2176.4  1.5  1900  1000  
    Capture Page Screenshot 
    Swipe               1.5   2176.4  1.5  1900  1000  
    Swipe               1.5   2176.4  1.5  1900  1000  
    Capture Page Screenshot 
    Swipe               1.5   2176.4  1.5  1900  1000  
    Swipe               1.5   2176.4  1.5  1900  1000  
    Capture Page Screenshot 
    Click Element At Coordinates    513    336
   


Add quantity using + button
    Click Element    ${+ Button}
    Sleep    2    
    Capture Page Screenshot
    Click Element    ${+ Button}
    Sleep    2
    Click Element    ${+ Button}
    Sleep    2    
    Capture Page Screenshot
    
Delete quantity using - button
    Click Element    ${- Button}
    Sleep    2    
    Capture Page Screenshot
    Click Element    ${- Button}
    Sleep    2
    Click Element    ${- Button}
    Sleep    2    
    Capture Page Screenshot

Type quantity
     Click Element    ${+ Button}
    Sleep    2    
    Clear Text     ${Type quantity}
    Input Text     ${Type quantity}    6
    Capture Page Screenshot 
  

Kebab icon
    Click Element    ${kebab icon}  
    Sleep    2    
    Capture Page Screenshot  
Call Shop
    Click Element    ${callshop}
    Sleep    2    
    Capture Page Screenshot   
Open in maps        
    Click Element    ${OpeninMaps}
    Sleep    2    
    Capture Page Screenshot  
Copy link
    Click Element    ${CopyLink}
    Sleep    2    
    Capture Page Screenshot  
    
send a text message
    Click Element    ${send message}
    Sleep    2    
    Capture Page Screenshot 
    
Send with whatsapp
    Click Element    ${Share with Whatsapp}
    Sleep    2    
    Capture Page Screenshot 
    
send in an email
    Click Element    ${Send in email}
    Sleep    2    
    Capture Page Screenshot 
    

#CART




Add to Cart
    Click Element    ${AddtoCart}
    Sleep    2 
    Click Element    ${AddtoCart}
    Sleep    2 
    Click Element    ${AddtoCart}
    Sleep    2    
    Capture Page Screenshot  
    Click Element    ${Close_Button}
    Capture Page Screenshot 
    

#BASKET

Go to Basket
    Click Element    ${YourBasket}
    Sleep    2    
    Capture Page Screenshot 

Go to Basket and Place Order

    Click Element    ${YourBasket}
    Sleep    2    
    Capture Page Screenshot 
    Click Element    ${Order_Button}
    Sleep    2    
    Capture Page Screenshot 
    
#CHECKOUT

Choose Delivery
    Click Element    ${Delivery}

Choose Date & Time
   Click Element     ${Choose_Date_textbox}     
    Click Element     ${Choose a date}
     Sleep    2      
    Capture Page Screenshot 
    Click Element    ${Choose_Time_textbox}
    Sleep    2      
    Capture Page Screenshot 
    Click Element    ${Choose a time}
    
GuestUser_fill_checkoutform
    Input Text    ${Firstname}    Eswari Nisha
    Input Text    ${Lastname}     Balakrishnan
    Input Text    ${emailaddress}    nisha@inqadigital.com
    Input Text    ${phone}    +31612809787
    Capture Page Screenshot    
    Swipe               1.5   2176.4  1.5  1900  1000
    
EmailUser_fill_checkoutform_pickup
    Capture Page Screenshot    
    Swipe               1.5   2176.4  1.5  1900  1000
    
Edit Address in Checkout page
    Sleep    2  
    Capture Page Screenshot    
    Input Text    ${addressline1}    ${Addaddressline1}
    Sleep    2  
    Input Text    ${addressline2}    ${Addaddressline2}
    Sleep    2  
    Input Text    ${postalcode}    ${Addpostalcode}
    Sleep    2  
    Input Text    ${city}        ${Addcity}    
    Sleep    2    
    Capture Page Screenshot
    Swipe               1.5   2176.4  1.5  1900  1000
    Swipe               1.5   2176.4  1.5  1900  1000
    Capture Page Screenshot 
    Swipe               1.5   2176.4  1.5  1900  1000   
    Swipe               1.5   2176.4  1.5  1900  1000  
    Capture Page Screenshot 
    Swipe               1.5   2176.4  1.5  1900  1000  
    Swipe               1.5   2176.4  1.5  1900  1000  
    Capture Page Screenshot 
    Swipe               1.5   2176.4  1.5  1900  1000  
    Swipe               1.5   2176.4  1.5  1900  1000  

Choose CashPay
    Capture Page Screenshot
    Click Element    ${Cashpay_radioBtn}
    Sleep    2    
    Capture Page Screenshot
    Page Should Contain Element    ${Proceed to Payment}  
    Click Element    ${Proceed to Payment} 
    Capture Page Screenshot    
    Sleep    5
    Page Should Contain Text    Order complete    
    Capture Page Screenshot 
    Click Element   ${Ordercomplete_Close_Button}
    Capture Page Screenshot  
    Sleep    2     

Choose Card pay  
    Swipe               1.5   2176.4  1.5  1900  1000 
    Capture Page Screenshot
    Click Element    ${Cardpay_radioBtn}
    Sleep    2    
    Capture Page Screenshot
    Page Should Contain Element    ${Proceed to Payment}  
    Click Element    ${Proceed to Payment} 
    Capture Page Screenshot    
    Sleep    5
    Page Should Contain Text    Order complete    
    Capture Page Screenshot 
    Click Element   ${Ordercomplete_Close_Button}
    Capture Page Screenshot  
    Sleep    2      


Choose Online Pay
    Capture Page Screenshot
    Click Element    ${OnlinePay_radioBtn}
    Sleep    2    
    Capture Page Screenshot
    Page Should Contain Element    ${Proceed to Payment}  
    Click Element    ${Proceed to Payment} 
    Capture Page Screenshot    
    Sleep    20   
    
Payment Failure  
    Click Element    ${Goto Previous}
    Sleep    3    
    Capture Page Screenshot
    Click Element    ${CloseBtn}
    
Input card details   
    Input Text    ${cardNumber}      4242 4242 4242 4242 
    Sleep    2 
    Input Text    ${cardExpiry}    02/22
    Sleep    2 
    Input Text    ${cardCvc}    222
    Sleep    2 
    Input Text    ${billingName}    Eswari Nisha Balakrishnan  
    Sleep    2    
    Capture Page Screenshot 
    Click Element    ${PayButton}    

    
#PROFILE

Go to profile
    Click Element    ${Profile_ICON_EN}
    Sleep    2  
    Capture Page Screenshot    
    
Click Login in profile page
    Click Element   ${LoginButton_Profile}
    Sleep    2  
    Capture Page Screenshot 
    
Logout
    Swipe               1.5   2176.4  1.5  1900  1000 
    Click Element    ${Logout_Button} 
    Sleep    2    
    Capture Page Screenshot 
    
Goto MyAccount
    Click Element    ${MyAccount}
    Sleep    2    
    Capture Page Screenshot 
    Clear Text    ${Lastname} 
    Input Text    ${Lastname}    ${editlastname}
    Capture Page Screenshot    
    Click Element    ${Save_Button}
    Capture Page Screenshot
    Sleep    2   

Goto Addresses 
    Click Element    ${Addresses}
    Sleep    2    
    Capture Page Screenshot 
    Click Element    ${Add address}
     Sleep    2    
    Capture Page Screenshot
    Input Text    ${addressline1}    ${Addaddressline1}
    Input Text    ${addressline2}    ${Addaddressline2}
    Input Text    ${postalcode}    ${Addpostalcode}
    Input Text    ${city}     ${Addcity}
    Sleep    2    
    Capture Page Screenshot 
    Click Element    ${Address_Save_button}
   
Goto Orders 
     Click Element    ${Orders}
     Sleep    2   
     Capture Page Screenshot 
     Click Element    ${First Order in list} 
     Sleep    2   
     Capture Page Screenshot 
     
Reorder 
     Click Element    ${Reorder}
     Sleep    2   
     Capture Page Screenshot 
     Go to Basket and Place Order
     EmailUser_fill_checkoutform_pickup
     Choose CashPay

View FAQ  
    Swipe               1.5   2176.4  1.5  1900  1000 
    Click Element    ${Support}
    Sleep    2   
    Capture Page Screenshot 
    Click Element    ${FAQ}
    Sleep    2   
    Capture Page Screenshot 
    
Contact Support
    Swipe               1.5   2176.4  1.5  1900  1000 
    Click Element    ${Support}
    Sleep    2   
    Capture Page Screenshot 
    Click Element    ${ContactSupport}
    Sleep    2   
    Capture Page Screenshot 
    Input Text    ${Supporttextbox}    Automation Test support form
    Click Element    ${SendBtn}
    
Terms & Conditions
    Swipe               1.5   2176.4  1.5  1900  1000 
    Click Element    ${TermsandCondition}
    Sleep    2   
    Capture Page Screenshot        

Privacy Policy
    Swipe               1.5   2176.4  1.5  1900  1000 
    Click Element    ${PrivacyPolicy}
    Sleep    2   
    Capture Page Screenshot  
    
 


#Favorites
 
View any favorite bakery  
     Click Element    ${First favorite bakery} 
     Sleep    2   
     Capture Page Screenshot
     
    
