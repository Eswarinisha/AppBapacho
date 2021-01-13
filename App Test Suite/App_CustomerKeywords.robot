*** Settings ***
Library    AppiumLibrary

Resource    AppVariables.robot


***Keyword***

#INTRO

Open Bapacho app
    Open Application    	http://localhost:4723/wd/hub 	    platformName=Android    deviceName=emulator-5554    appPackage=nl.designs.bapacho    appActivity=nl.designs.bapacho.MainActivity      automationName=UiAutomator2
    Sleep   10   
    Capture Page Screenshot 


Open App and Read intro
      
    Open Bapacho app   
    Wait Until Page Contains Element    ${IntroNext_Button_${Language}}
    Capture Page Screenshot
    Click Element    ${IntroNext_Button_${Language}}  
    Wait Until Page Contains Element    ${IntroNext_Button_${Language}}
    Capture Page Screenshot
    Click Element    ${IntroNext_Button_${Language}}  
    Wait Until Page Contains Element    ${IntroNext_Button_${Language}}
    Click Element    ${IntroNext_Button_${Language}}  
    Wait Until Page Contains Element     ${IntroStartUsingBapacho_Button_${Language}}  
    Capture Page Screenshot  
    Click Element     ${IntroStartUsingBapacho_Button_${Language}}  
    Wait Until Page Contains Element    ${ChooseStaging}     
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
    Sleep  2
    Click Element    xpath=//android.view.View[@index=13]  
    Sleep    5 
    Click Element    ${AllowDeviceLocation} 
    Sleep    2  
      
Deny Device Location  
   Swipe               1.5   2176.4  1.5  1935.6  1000
    Sleep  2
    Click Element    xpath=//android.view.View[@index=13]  
    Sleep    5 
    Click Element    ${DenyDeviceLocation} 
    Sleep    2  
    Click Element    xpath=//android.view.View[@index=13]
    Sleep    2  
    Run Keyword And Continue On Failure    Click Element     ${Dontaskagain_Chkbox} 
    Run Keyword And Continue On Failure    Click Element         ${DenyDeviceLocation} 
    Sleep    2  
    Run Keyword And Continue On Failure     Click Element    xpath=//android.view.View[@index=13]  
    

Off Push Notification 
    Click Element    ${OffNotification_ToggleBtn}
    Click Element    ${OffLocationPermission_ToggleBtn}  
    Capture Page Screenshot 
    Swipe               1.5   2176.4  1.5  1935.6  1000
    Sleep  2   
    Click Element    xpath=//android.view.View[@index=13]
    Sleep    2  
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
    
    


#LOGIN
Skip Login
    
    Wait Until Page Contains Element    ${textfield_emailaddress}    
    Click Element   ${Skip_Button}  
    Sleep    2 
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
    Click Element    ${Login_Button}   
    Sleep    2 
    Wait Until Page Contains Element     ${Login_textfield_emailaddress}
    Click Element    ${Login_textfield_emailaddress}
    Is Keyboard Shown
    #Input Text    ${Login_textfield_emailaddress}     ${LoginCredentials}[0] 
    # Input Text   ${Login_textfield_password}     ${LoginCredentials}[1] 
    # Click Element    ${Show_password}
    # Click Element    ${Login_Button} 
    # Sleep    2 
    # Capture Page Screenshot  
    # Page Should Contain Text    Welcome       
         
      
#Search

Type Address and Search 
    Clear Text    ${textfield_AddressBar}
    Input Text    ${textfield_AddressBar}     ${SearchAddress_${Staging}}
    Capture Page Screenshot    
    Sleep    2    
    Click Element    ${First_Search_Result}
    Run Keyword And Continue On Failure    Hide Keyboard         
    Click Element    ${Search_Button}
    Capture Page Screenshot   
    Sleep    7
       
Select a bekery from Near me list
    Click Element    ${Delivery_ICON_${Language}}
    Sleep    2       
    Page Should Contain Text   ${First bakery from Result_${Staging}}
    Click Text    ${First bakery from Result_${Staging}}      
    Sleep    2 
    Capture Page Screenshot  


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
    Click Element    ${ProductName} 
    Sleep    2    
    Capture Page Screenshot  

Add to Cart
    Click Element    ${AddtoCart}
    Sleep    2    
    Capture Page Screenshot  

    
