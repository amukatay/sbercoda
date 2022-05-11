package sbercode

default deny = []

pod_list[pods] {
  item := input.items[_]   
  item.kind == "Pod"                   
  pods := item
}

allow[msg] {  
  count(pod_list) = 0
  msg := "Pod created"
}

error[msg] {  
  count(pod_list) = 0
  msg := "No pod found3"
}

#error[msg] {  
#  count(pod_list) = 0
#  msg := "No pod found2"
#}
