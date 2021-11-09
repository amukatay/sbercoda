package sbercode

default error = []

pod_list[pods] {
  item := input.items[_]   
  item.kind == "Pod"                   
  pods := item
}

deny[msg] {  
  count(pod_list) = 0
  msg := "Pod created"
}

allow[msg] {  
  count(pod_list) = 0
  msg := "No pod found"
}
