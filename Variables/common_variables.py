from selenium.webdriver.chrome.options import Options
import os 
from datetime import date
import time
epochtime=int(time.time())
d=date.today()
Today_Date = str(d.month)+'/'+str(d.day)+'/'+str(d.year)

var_customerordernum="552280353"
#"552278604"
#552280353
#var_QuoteID = "SM274100501"
var_iSEDesignID = "407354"

#------------Salesforce-------------
Account_Name = "Koch Entertainment"
BAN = "1-3QZT53"
Oppo_Name = "IPVPN Opportunity_"+str(epochtime)
Oppo_Stage_Value = "Identified"
SM_Name = "IPVPN Scenario"+str(epochtime)
Site_Address = "TAMRFLWS"
FloorRoom = "Floor 1 Room 1"
HotCut = "No"
#CCM = "Bills, Anistasia"
Sales_Engineer = "Manjunath Negalala Veeranna"
existingContact = "Bill Metz"
newContactemail = "testIPVPNTDG"+str(epochtime)+"@lumen.com"
newContactDetails = ("Ms.", "TestZoom","TDG"+str(epochtime),newContactemail,"4043031234")
VRFName = "VRF"+str(epochtime)
#VRFName = "VRF1640169375"
iSEDesignName = "IPVPNDesign_"+str(epochtime)
var_OrderResult="2"

ProductGroup="Strategic"
IPVPNAccess="dETH100"
# discount_lvl="Standard"
# Term = ""
# DealRegistrationNum = ""
# DealRegistrationApprovalNum = ""
# DSR_Info = ("North America","Unified Communications & Collaboration","test zoom")


##### SES #####
SES_Status = "[any status]"
AssignedTo = "[any specialist]"

Process_Value="OP Credit Check"


OES_Name = "Bills, Anistasia <anistasia.bills@lumen.com>"
