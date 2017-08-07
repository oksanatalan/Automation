require 'rubygems'
require 'selenium-webdriver'
url = "https://accounts.google.com/SignUp?service=mail&continue=https://mail.google.com/mail/?pc=topnav-about-en" 
driver = Selenium::WebDriver.for:firefox

# 1Step
driver.get(url) 
driver.find_element(:id, "FirstName").send_keys "Оксана"
driver.find_element(:id, "LastName").send_keys "Талан"
driver.find_element(:id, "GmailAddress").send_keys "oksoksa123@gmail.com"
driver.find_element(:id, "Passwd").send_keys "ooo12345678"
driver.find_element(:id, "PasswdAgain").send_keys "ooo12345678"
driver.find_element(:id, "BirthDay").send_keys "25"
driver.find_element(:id, "BirthYear").send_keys "1991"

driver.find_element(:css, "#BirthMonth > div:nth-child(1)").click
sleep(0.5)
driver.find_element(:id, ":a").click

driver.find_element(:css, "#Gender > div:nth-child(1)").click
sleep(0.5)
driver.find_element(:id, ":e").click

element = driver.find_element(:id, "RecoveryPhoneNumber")
element.clear
element.send_keys "+380939341513"

sleep(0.5)
driver.find_element(:id, "submitbutton").click

# 2Step
sleep(2)
element = driver.find_element(:class, "tos-scroll-button-icon").click

sleep(1)
driver.find_element(:id, "iagreebutton").click

# 3Step
sleep(2)
element = driver.find_element(:id, "next-button").click




  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


