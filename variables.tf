variable "virttype" {
    description     = "Set virtualization type for your AMI. Valid values are: hvm or paravirtual"
    default         = "hvm"
}

variable "rhel_version" {
    description     = "Set the Major.Minor version of the RHEL to be used. Default: 7.2"
    default         = "7.2"
}

variable "architecture" {
    description     = "Set the architecture for your AMI (i386, x86_64). Default: x86_64"
    default         =  "x86_64"
}

variable "root-device-type" {
    description     = "Set the device type for your root volume. Default: ebs"
    default         = "ebs"
}

#-- set expandtab tabstop=4 shiftwidth=4 ai et
