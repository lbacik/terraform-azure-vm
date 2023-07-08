# Terraform / Azure / Single vm

In this repository, you can find the Terraform scripts for managing a single vm on Azure.



## Requirements

* Azure Account
* [Terraform](https://www.terraform.io/)




## Usage

```bash
### az cli is required - and you have to be logged in
az login
```



Before starting - please copy the example configuration and edit it according to your need. All parameters have some default value assigned except the ` admin_password`. 


```bash
cp terraform.tfvars.example terraform.tfvars
```



When ready with configuration - you can build your vm :) 


```bash
# to init terraform (required only once)
terraform init

# optionally (check the terraform docs for more details)
# terraform plan

# to create the vm
terraform apply
```



Finally, to remove created environment (and the whole resources group):

```bash
### to remove it
terraform destroy
```



## Network ports

Followed ports have been added to the network configuration (`network.tf`) and are opened by default for each created vm:

| Port     | Description |
| -------- | ----------- |
| 22/tcp   | ssh         |
| 80/tcp   | http        |
| 443/tcp  | https       |
| 53/udp   | dns         |
| 1194/udp | OpenVpn     |

Please note that (except the ssh and port 22/tcp) the default vm doesn't contain any listening software on those ports (they have been added only for the convenience of the author according to the most often-used scenarios)!
