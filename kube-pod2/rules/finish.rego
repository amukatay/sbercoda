package sbercode

#default error = []

pod_list[pods] {
  item := input.items[_]   
  item.kind == "Pod"                   
  pods := item
}

allow[msg] {  
  count(pod_list) = 0
  msg := "Pod created"
}

deny[msg] {  
  count(pod_list) = 0
  msg := "https://www.google.ru/ \n No pod found333333333333333333333333333333333333333333333333333333333 33333333333333333 333333333333333 33333333333333 333333333333333 333333333 333333333 \r\n 33333333333 \n 22222222 444444444 \n"
}

error[msg] {  
  count(pod_list) < 0
  msg := "https://www.google.ru/"
}
