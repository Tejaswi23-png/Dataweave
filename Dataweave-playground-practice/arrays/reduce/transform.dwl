%dw 2.0
output application/json 
---

payload map ((item, index) -> {
    (item.name): {
        age: item.age
    }
}) reduce ((item, accumulator) -> accumulator ++ item)