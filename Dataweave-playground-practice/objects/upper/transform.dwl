%dw 2.0
output application/json 
---

payload mapObject ((value, key, index) -> {
    (key): value map ((item, index) -> {
        name: upper(item.name)
    })
})