Feature: Send Email

Scenario: email sent successfully
Given the order status is complete 
When admin tries to send email to customer whose email is "faihaa.odeh20@gmail.com"
Then email sent successfully
