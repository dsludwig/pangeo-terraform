# Usage

Create a file called `terraform.tfvars` in the `gke` directory.

Here you can define the parameters for your specific deployment.  For example:

```
project = "pangeo-181919"
cluster_name = "neuro-pangeo-io"
```

Once

```
cd gke
terraform init
terraform apply
```
