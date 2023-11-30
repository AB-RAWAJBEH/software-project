Feature: Schedule 
        Description: shedule all installation
        
     Background: visited
Given these are bookings 
     |  id |  w_id |  bookdate    |  booktime   |  Bill |
     | 123 |    3   |  12-3-2023   |  12:30      |  150  |
     | 456|    1   |  19-2-2023   |  6:00       |  80   |
     | 460 |    1   |  19-2-2023   |  4:00       |  80   |																		
     | 123 |    2   |  28-2-2023   |  1:00       |  100  |   
        
 Scenario: On time
 Given there is the customer with ID "123"
 And the customer come in time where Previously selected
 When the customer pay his bill
 Then the booking delete from Schedule table