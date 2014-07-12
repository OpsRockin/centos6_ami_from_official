# CentOS AMI Builder for EC2 from official market place image

## Usage

Setup

```
$ cp env.sh.sample
$ vi env.sh # and fill it
```

Build AMI

Notice: Create Instance manually using your account at least once to license agreement.

```
$ source env.sh
$ packer build packer_ec2.json
```

## SSH login

`cloud-user@${public_hostname}`


Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

License: MIT

Author:

- SAWANOBORI Yukihiko(HiganWorks LLC, OpsRock LLC)

