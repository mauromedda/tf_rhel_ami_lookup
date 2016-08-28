tf_rhel_ami_lookup
===========

Terraform module to get the latest version of the publicly available RHEL (powered by RedHat)
specified.


Module Input Variables
----------------------

- `virttype`   - AMI virtualization type [ default: hvm ]
- `rhel_version` - RHEL version [ default: 7.2 ]
- `root-device-type` - device type for the root volume [ default: ebs ]
- `architecture` - OS architecture [ default: x86_64 ]



Usage
-----

```hcl
module "rhel_ami_lookup" {
   source = "./tf_rhel_ami_lookup"
   rhel_version = "7.2"
   virttype = "hvm"
   root-device-type = "ebs"
   architecture = "x86_64"
}

```


Outputs
=======

 - `ami_id` - the ami id of the latest AMI RHEL specified version

Authors
=======

Originally created and maintained by [Mauro Medda](https://github.com/mauromedda)

License
=======
