# terraform-azurecli-kubectl-helm
Small Alpine based Docker image with Terraform, azure-cli, kubectl and Helm.

# Docker Hub
[sdvmm/terraform-azurecli-kubectl-helm](https://hub.docker.com/r/sdvmm/terraform-azurecli-kubectl-helm)

# Docker image
* OS: Alpine
* Version: 3.13.5

# Installed packages (apk)
* [python3](https://pkgs.alpinelinux.org/package/v3.11/main/x86_64/python3)
* [curl](https://pkgs.alpinelinux.org/package/v3.11/main/x86_64/curl)
* [git](https://pkgs.alpinelinux.org/package/v3.11/main/x86_64/git)
* [jq](https://pkgs.alpinelinux.org/package/v3.11/main/x86_64/jq)
* [gettext](https://pkgs.alpinelinux.org/package/v3.11/main/x86_64/gettext)

# Installed packages (pip)
* [azure-cli](https://pypi.org/project/azure-cli) `2.24.0`

# Installed packages (go binaries)
* [terraform](https://www.terraform.io/downloads.html) `0.15.4`
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) `v1.19.7`
* [helm](https://github.com/helm/helm/releases) `v3.6.0`