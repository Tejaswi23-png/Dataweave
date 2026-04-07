%dw 2.0
output application/json 
---

payload map ((item, index) -> item.name) distinctBy ((item, index) -> item)