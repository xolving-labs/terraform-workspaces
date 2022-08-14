# terraform-workspaces
### Usage:
```
# 1. Initialize terraform environment (Note: AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY have to be defined)
terraform init

# 2. Run below command to view available workspaces
terraform workspace list

# 3. Select desired workspace (example for staging)
terraform workspace select staging

# 4. Validate that you are indeed using the desired workspace
terraform workspace show

# 5. Run terraform using environment specific tfvar file
terraform plan -var-file=staging.tfvars
terraform apply -var-file=staging.tfvars
```
