/*
variable "instances"{
    type = map 
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping = "t3.small"
    }
}

*/

# This should be converted in to set
variable "instances"{
  type = list
   default = ["mongodb","redis"]

}

variable "zone_id"{
    default = "Z0031972RV2QBNE1P8DT"
}

variable "domain_name"{
    default = "pugasaha.online"
}