*** Settings ***
Library    AppiumLibrary

Resource    AppVariables.robot
Resource    App_CustomerKeywords.robot


***Keyword***
Guest user - pickup - Cash Pay Steps
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login
    Type Address and Search
    View Delivery
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    GuestUser_fill_checkoutform
    Choose CashPay
    
Email user -Pickup - Cash Pay Steps
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    User Email SignIn
    Continue Button alert
    Type Onboarding address
    View Pickup
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    EmailUser_fill_checkoutform_pickup
    Choose CashPay
    
Email user - Delivery - Cash Pay Steps
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    User Email SignIn
    Continue Button alert
    Type Onboarding address
    View Delivery
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    Choose Delivery
    Edit Address in Checkout page
    Choose CashPay
    
Email user - Pickup - Online Pay Steps
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    User Email SignIn
    Continue Button alert
    Type Onboarding address
    View Pickup
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    EmailUser_fill_checkoutform_pickup
    Choose Online Pay 
    
Email user - Delivery - Online Pay Steps
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    User Email SignIn
    Continue Button alert
    Type Onboarding address
    View Delivery
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    Choose Delivery
    Edit Address in Checkout page
    Choose Online Pay 
    
Email user - Pickup - Card Pay Steps
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    User Email SignIn
    Continue Button alert
    Type Onboarding address
    View Pickup
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    EmailUser_fill_checkoutform_pickup
    Choose Card pay
    
Email user - Delivery - Card Pay Steps
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    User Email SignIn
    Continue Button alert
    Type Onboarding address
    View Delivery
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    Choose Delivery
    Edit Address in Checkout page
    Choose Card pay
    
Email user - Pickup - Online Pay Failure
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    User Email SignIn
    Continue Button alert
    Type Onboarding address
    View Pickup
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    EmailUser_fill_checkoutform_pickup
    Choose Online Pay 
    Payment Failure