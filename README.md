# terra-kitchen-test

## Prerequisites:

- Terraform (>= 0.12) - https://www.terraform.io/intro/getting-started/install.html
- Ruby - https://www.ruby-lang.org/en/documentation/installation/
- kitchen-terraform - https://www.rubydoc.info/github/newcontext-oss/kitchen-terraform/


### Instructions:

Once you've gone through all of the requirements you need to clone this repo and download its dependencies:

```
# Clone the repo
$ git clone git@github.com:Rel1ck/terra-kitchen-test.git
$ cd terra-kitchen-test

# Install dependencies
$ bundle install
```
After that, we will proceed with the usage of our kitchen-terraform module:

```
# Setup testing environment
$ bundle exec kitchen create

# Run terraform testing module,BE CAREFUL... THIS WILL CREATE AWS RESOURCES!
$ bundle exec kitchen converge

# Run validation test
$ bundle exec kitchen verify

# Don't forget to destroy created resources
$ bundle exec kitchen destroy
```

### Variables:

Additionally, you can modify details as the number of files to be created, the environment and the owner of the resorces changing the values in the terraform.tfvars file. 
