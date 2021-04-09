# sample repo - use count - null provider - use count.index (gh repo) 

## Intro

This manual is dedicated to run terraform code with null provider and use count.index

Tested on Mac OS X.

## Requirements

- Hashicorp terraform recent version installed
[Terraform installation manual](https://learn.hashicorp.com/tutorials/terraform/install-cli)

- git installed
[Git installation manual](https://git-scm.com/download/mac)

## Preparation 
- Clone git repository. 

```bash
git clone https://github.com/antonakv/tf-ob-countnull.git
```

Expected command output looks like this:

```bash
Cloning into 'tf-ob-countnull'...
remote: Enumerating objects: 12, done.
remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 12 (delta 1), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (12/12), done.
Resolving deltas: 100% (1/1), done.
```

- Change folder to tf-ob-countnull

```bash
cd tf-ob-countnull
```

## Run terraform code

- In the same folder you were before run init

```bash
terraform init
```

Sample result
```bash
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/null...
- Installing hashicorp/null v3.1.0...
- Installed hashicorp/null v3.1.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- In the same folder you were before apply terraform code

```bash
$ terraform apply
```

Sample result
```bash
$ terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # null_resource.mynull[0] will be created
  + resource "null_resource" "mynull" {
      + id = (known after apply)
    }

  # null_resource.mynull[1] will be created
  + resource "null_resource" "mynull" {
      + id = (known after apply)
    }

  # null_resource.mynull[2] will be created
  + resource "null_resource" "mynull" {
      + id = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

null_resource.mynull[1]: Creating...
null_resource.mynull[0]: Creating...
null_resource.mynull[2]: Creating...
null_resource.mynull[0]: Provisioning with 'local-exec'...
null_resource.mynull[2]: Provisioning with 'local-exec'...
null_resource.mynull[1]: Provisioning with 'local-exec'...
null_resource.mynull[1] (local-exec): Executing: ["/bin/sh" "-c" "echo 1"]
null_resource.mynull[2] (local-exec): Executing: ["/bin/sh" "-c" "echo 2"]
null_resource.mynull[0] (local-exec): Executing: ["/bin/sh" "-c" "echo 0"]
null_resource.mynull[0] (local-exec): 0
null_resource.mynull[0]: Creation complete after 0s [id=1710819284416256305]
null_resource.mynull[1] (local-exec): 1
null_resource.mynull[2] (local-exec): 2
null_resource.mynull[2]: Creation complete after 0s [id=7511390178499293104]
null_resource.mynull[1]: Creation complete after 0s [id=8795816450067643007]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```
