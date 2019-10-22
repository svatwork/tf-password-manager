# tf-password-manager

This project serves as boiler template for a terraform project. I've learned quite a bit myself and I hope whomever uses it does as well.

The cloud provider in this context is GCP. It serves up a cloud sql database, a vm instance and networking settings. 

## Getting Started

1. Clone the repository

```
git clone git@github.com:svatwork/tf-password-manager.git
```

2. Add a serviceaccount in the root of the folder named serviceaccount.json

https://cloud.google.com/iam/docs/understanding-service-accounts


### Prerequisites

Terraform 0.12: 

```
wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip
unzip terraform_0.12.12_linux_amd64
mv terraform /usr/bin
```

### Installing


```
terraform plan
```

And repeat

```
terraform apply 
```

Output:
```
Plan: 7 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------
```

## Authors

* **Sebastiaan Verbeek** - *Initial work* - [svatwork](https://github.com/svatwork)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

