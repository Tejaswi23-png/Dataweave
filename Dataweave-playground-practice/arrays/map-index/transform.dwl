%dw 2.0
output application/json skipNullOn = "everywhere"
---

payload map ((item, index) -> {
    "value": item,
    "index": index
})