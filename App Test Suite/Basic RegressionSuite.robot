*** Settings ***
Library    AppiumLibrary

Resource    AppVariables.robot
Resource    Basic Regression Suite Keywords.robot

*** Test Cases ***

Guest user - Pickup - Cash Pay
    Guest user - pickup - Cash Pay Steps
    
Email user -Pickup - Cash Pay
    Email user -Pickup - Cash Pay Steps
    
Email user - Delivery - Cash Pay 
    Email user - Delivery - Cash Pay Steps
    
Email user - Pickup - Online Pay
    Email user - Pickup - Online Pay Steps
    
Email user - Delivery - Online Pay
    Email user - Delivery - Online Pay Steps
    
Email user - Pickup - Card Pay
    Email user - Pickup - Card Pay Steps
    
Email user - Delivery - Card Pay
    Email user - Delivery - Card Pay Steps
    
Email user - Online pay failure
    Email user - Pickup - Online Pay Failure

    