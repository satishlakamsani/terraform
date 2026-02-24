variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "ec2_tags"{
    default = {
        Name = "function-demo"
        Environment = "prod"
    }
}

variable "sg_tags"{
    default = {
        Name = "function-demo"
    }
}