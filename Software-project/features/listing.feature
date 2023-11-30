Feature: listing



Scenario: print a list of customer
Given Admin is login 
When admin enters customer columns 
|name|user_name|pass|phone_number|city|
|Hadeel|Hadeel@|had123|0599382019|Nablus|
|Suha|Suha12|Suha123|0598112331|Tulkarm|
|Amnah|Amnah_12|Amnah123|0594424311|Ramallah|
|Reem|Reem@1|Reem123|0592114477|Ghaza|
|Ahmad|Ahmad_76|Ahmad123|0598577359|jenin|
Then print data of customer



Scenario: print a list of product
Given Admin is login 
When admin enters product columns 
|name|type|price|amount|
|side mirror  | medium | 30 |8 |
| cover | water proof | 25 | 1 | 
| cover | not water proof  |15| 2 |
| side mirror | small | 20 | 10 |
Then print data of product
