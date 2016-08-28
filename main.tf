/*
* Module: tf_rhel_ami_lookup 
* This simple tf_rhel_ami_lookup module is based on the aws cli command below
*
*   aws ec2 describe-images --filters \
*   "Name=virtualization-type,Values=hvm" \
*   "Name=name,Values=RHEL-7.2*" \
*   "Name=owner-id,Values=309956199498" \
*   "Name=root-device-type,Values=ebs" \
*   "Name=architecture,Values=x86_64" \
*   --query \
*   "reverse(sort_by(Images[*], &CreationDate))[*].[Name,ImageId]" \
*   --output text | head -n 1 | cut -f 2
*
*
*  This module enable you to launch instance with the latest RHEL version
*  available in the Market place.
*
*/

data "aws_ami" "base_ami" {
    most_recent = true
    filter {
        name    = "owner-id"
        values  = [ "309956199498" ]
    }
    filter {
        name    = "virtualization-type"
        values  = [ "${var.virttype}" ]
    }
    filter {
        name    = "name"
        values  = ["RHEL-${var.rhel_version}*"]
    }
    filter {
        name    = "architecture"
        values  = [ "${var.architecture}" ]
    }
    filter {
        name    = "root-device-type"
        values  = [ "${var.root-device-type}" ]
    }

}

#-- set expandtab tabstop=4 shiftwidth=4 ai et
