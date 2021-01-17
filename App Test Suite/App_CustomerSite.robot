***Setting***
Library    AppiumLibrary


Resource    AppVariables.robot
Resource    App_CustomerKeywords.robot



*** Test Cases ***

#CAF001        	App intro


CASF001TC001	#After app installation,user must be able to view intro pages and click next buttons to enter in to Staging page
    
     Open App and Read intro    
     
CASF001TC002	# After app installation,user must be able to skip intro pages and enter in to Staging page
      
     Open App and Skip intro
     
#CAF002	        Customer Login

CASF002TC001	# User must be able to allow access loctaion and go to Login page
    Open App and Skip intro
    Choose Staging 
    Allow Device Location     
    
#CASF003TC001	#User must be able to type emailid and password and click on Signup button 

    User Email Signup   
    Close Application
    
CASF002TC002	# User must be able to deny access loctaion and go to Login page
    Open App and Skip intro
    Choose Staging 
    Deny Device Location
    
#CASF003TC002	#User must not be able to register with existing registered email id
    User SignUp with existing account
    Close Application

CASF002TC003	#User must be able to disable location permission,notification and go to Login page   
    Open App and Skip intro
    Choose Staging
    Off Push Notification

#CASF005TC001	#User must be able to login using his credentials and current location pops up in your address page 
    User Email SignIn
    Close Application
    
CASF008TC001	#User must be able to search bakeries by place on search bar
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login
    Type Address and Search
    
#CASF008TC002	#uest User must be able to add bakeries to favorites
    Select a bekery from Near me list
    Mark as Favorite
    View Favorites
    
CASF008TC003	#Guest User must be able to add products to cart
    
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
    
#CASF008TC004	#Guest User must be able to checkout and place order
    Go to Basket and Place Order
    GuestUser_fill_checkoutform
    Choose CashPay
    