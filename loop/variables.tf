variable "instances"{
    type = list
    default = ["mongodb","catalogue","redis","user","cart","mysql","shipping","rabbitmq","payment","frontend"]

}

variable "zone_id"{
    default = "Z0031972RV2QBNE1P8DT"
}

variable "domain_name"{
    default = "pugasaha.online"
}

variable "fruits"{
    type = list(string)
    default = ["apple","banana","apple","orange"]
}

variable "fruits_set"{
    type = set(string)
    default = (["apple","banana","apple","orange"])
}