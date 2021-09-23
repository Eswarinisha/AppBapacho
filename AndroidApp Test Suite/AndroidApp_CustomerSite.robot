***Setting***
Library    AppiumLibrary


Resource    AndroidApp_Variables.robot
Resource    AndroidApp_CustomerKeywords.robot
Resource    AndroidApp_Basic Regression Suite Keywords.robot


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

CASF004TC001	#User must be able to click on Logic icon and click login using Facebook
    Open App and Skip intro
    Choose Staging
    Off Push Notification
    Facebook Login

#CASF005TC001	#User must be able to login using his credentials and current location pops up in your address page 
    User Email SignIn
    User denies location

#CASF005TC002	#User must be able to type own address and choose from search result
   Type Onboarding address 

CASF006TC001	#User must be able to type emailid and click on forgot password link
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Forgot password
    

     
    
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
    
CASF008TC004	#Guest User must be able to checkout and place order
    Go to Basket and Place Order
    GuestUser_fill_checkoutform
    Choose CashPay
    
#CASF009TC001	#Guest User can Signup in Profile page
    Go to profile
    Click Login in profile page
    User Email Signup
    Logout
    
CASF009TC002	#Guest User can login in Profile page
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login  
    Type Address and Search
    Go to profile
    Click Login in profile page
    User Email SignIn
    Type Onboarding address
    Go to profile
    
#CASF010TC001	#User must be able to edit and save all the information in my account
    Goto MyAccount
    
#CASF011TC001	 #User must be able to add address
    Goto Addresses 

#CASF010TC002	#While placing order, all the information must be populated correctly after checkout
    View Pickup
    Select a bekery from Near me list
    Choose Product Category
    View product information
    Add to Cart
    Go to Basket and Place Order
    EmailUser_fill_checkoutform_pickup
    Choose CashPay
    
#CASF012TC001	#User can view his order history under My orders in My account
#CASF012TC002	#User can select any of his previous orders
    Go to profile
    Goto Orders

#CASF012TC004	#User must be able to click repeat order and place the same    
    Reorder 
    
#CASF015TC001	#User must be able to type the location to find his bakery needed, search results available in Pickup,Delivery and Near me pages
CASF015TC002	#On clicking on the arrow near the search tab, current location must be populated,search results available in Pickup,Delivery and Near me pages    
    Open App and Skip intro
    Choose Staging
    Allow Device Location
    Skip Login  
    #Get current location in search bar
    
#CASF016TC001	#User must be able to use filter "Range from my location" and get relevent result in  Pickup,Delivery and Near me pages   
   
    # Search by distance
    # View Delivery
    # View Pickup
    # View NearMe
    
#CASF016TC002	#User must be able to use filter deliver/pickup and get relevent result in Pickup,Delivery and Near me pages
# CASF016TC003	#User must be able to use filter "other filter" and get relevent result in  Pickup,Delivery and Near me pages
# CASF017TC001	#User must be able to use one or many filters and get relevant result in the bakery listing page
# CASF017TC002	#User must be able to deselect Category filter and get relevent result in the bakery listing page  
    Search by Pickup filter
    View Delivery
    View Pickup
    View NearMe
    Search by Delivery filter
    View Delivery
    View Pickup
    View NearMe
    Search by Online Payment filter
    View Delivery
    View Pickup
    View NearMe
    Search by Now Open filter
    View Delivery
    View Pickup
    View NearMe
    
CASF020TC001	#In the bakery display page, under the About Bakery, show more information link must be available
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login  
    Type Address and Search 
    View Delivery
    Select a bekery from Near me list 
    # Show bakery information 'i' 
    # Add quantity from 'i'  
    
#CASF024TC001	#User can click on kebab icon and choose Call shop
    Kebab icon
    Call Shop
    Close All Applications
   
CASF024TC002	#User can click on kebab icon and choose Open in maps
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login  
    Type Address and Search 
    View Delivery
    Select a bekery from Near me list 
    Kebab icon
    Open in maps
    Close All Applications
    
CASF024TC003	#User can click on kebab icon and choose Copy link
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login  
    Type Address and Search 
    View Delivery
    Select a bekery from Near me list 
    Kebab icon
    Copy link
    Close All Applications
    
CASF024TC004	#User can click on kebab icon and choose "Send as text message"
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login  
    Type Address and Search 
    View Delivery
    Select a bekery from Near me list 
    Kebab icon
    send a text message
    Close All Applications
    
CASF024TC005	#User can click on kebab icon and choose "Share with Whatsapp"
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login  
    Type Address and Search 
    View Delivery
    Select a bekery from Near me list 
    Kebab icon
    Send with whatsapp
    Close All Applications
    
CASF024TC006	#User can click on kebab icon and choose "Send in an email"
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login  
    Type Address and Search 
    View Delivery
    Select a bekery from Near me list 
    Kebab icon
    send in an email
    Close All Applications
    
CASF025TC001	#User must be able to add produts using "+" in the product  
# CASF025TC002	#User must be able to change the quantity of product using + and - buttons
# CASF025TC003	#User must be able to directly type the quantity of product in the box
    Open App and Skip intro
    Choose Staging
    Deny Device Location
    Skip Login 
    Type Address and Search 
    View Delivery
    Select a bekery from Near me list 
    Choose Product Category
    Add quantity using + button
    Delete quantity using - button
   # Type quantity
    
#CASF027TC001     #Order button must not be present if order is below minimal amount for order  
     Click Element    ${+ Button}
     Sleep    2  
     Go to Basket and Place Order
     Pass Execution    "Failure expected - testing minimal amount order "             
     
CASF028TC001	#On clicking Favorites icon, the list of favorite bakeries must be displayed  
    
    Open App and Skip intro
    Choose Staging
    Off Push Notification
    User Email SignIn
    User denies location
    Type Onboarding address
    View Favorites
    View any favorite bakery

CASF034TC001	#User must be able to view FAQ
    Open App and Skip intro
    Choose Staging
    Off Push Notification
    User Email SignIn
    User denies location
    Type Onboarding address
    Go to profile
    View FAQ
    
CASF034TC002	#User must be able to click Contact Support to fill up the form and send
    Open App and Skip intro
    Choose Staging
    Off Push Notification
    User Email SignIn
    User denies location
    Type Onboarding address
    Go to profile
    View FAQ
    Contact Support
    
CASF035TC001	#User must be able to click and view T&C
    Open App and Skip intro
    Choose Staging
    Off Push Notification
    User Email SignIn
    User denies location
    Type Onboarding address
    Go to profile
    Terms & Conditions
    
CASF036TC001	#User must be able to click and view Privacy Statement
    Open App and Skip intro
    Choose Staging
    Off Push Notification
    User Email SignIn
    User denies location
    Type Onboarding address
    Go to profile
    Privacy Policy
    
CASF037TC001	#User can be able to Logout
    Open App and Skip intro
    Choose Staging
    Off Push Notification
    User Email SignIn
    User denies location
    Type Onboarding address
    Go to profile
    Logout
    

    

    