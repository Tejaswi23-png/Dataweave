%dw 2.0 

output application/json 

--- 

payload pluck ((value, key, index) -> { 
    server: key, 
    ip: value.ip, 
    server: value.services filterObject ((value, key, index) -> value == true ) pluck ((value, key, index) -> key ) 

}) 