# DevOps Portfolio — Site & Examples

This static site showcases practical DevOps artifacts and short examples for common tools:

- Ansible: `examples/ansible/playbook.yml`
- Terraform: `examples/terraform/main.tf`
- Docker: `examples/docker/Dockerfile`
- Kubernetes: `examples/k8s/deployment.yaml`
- Scripts: `scripts/deploy.sh`, `scripts/deploy.ps1`

How to view the site locally

1. Open `mainsite/index.html` in a browser (static HTML) or run a simple Python server:

```bash
cd mainsite
python3 -m http.server 8000
# then open http://localhost:8000
```

Try the examples

- Ansible: `ansible-playbook -i inventory examples/ansible/playbook.yml` (run on target hosts).
- Terraform: `terraform init && terraform apply` in `examples/terraform` (requires AWS credentials).
- Docker: `docker build -t mainsite-example:latest -f examples/docker/Dockerfile .`
- Kubernetes: `kubectl apply -f examples/k8s/deployment.yaml` (requires a k8s cluster).

Scripts

- Make scripts executable: `chmod +x scripts/deploy.sh`
- Run the helper script: `./scripts/deploy.sh`

Notes

- These examples are intentionally minimal and intended for learning and adaptation. They should be adapted before use in production (add variables, credentials management, state locking, secrets handling, and security controls).
