/* Returns the AMI Id of the latest RHEL in the MarketPlace */
output "ami_id" {
    value = "${data.aws_ami.base_ami.id}"
}

#--- expandtab tabstop=4 shiftwidth=4 ai et ---#
