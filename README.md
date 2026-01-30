# TERRAFORM COMMANDS
- terraform force-unlock 25630c07-32bb-6a7c-03aa-8df05c4b86a1  | This will release terraform operation that did not complete cleanly due to state locking
- terraform plan -var-file="dev.tfvars"
- terraform apply -var-file="dev.tfvars" -auto-approve
- terraform destroy -var-file="dev.tfvars" -auto-approve
- terraform destroy -var-file="dev.tfvars" -target=aws_instance.example -auto-approve

# Create a GitHub Repo with the following name:
CI-Terraform-AWS-Infra-Deployment-project

# Setup SSH Keys or 1️⃣ Check if you already have an SSH key
Open your local terminal (bash in VS conde) and run:
ls -al ~/.ssh 
(If you see files like id_ed25519 and id_ed25519.pub (or id_rsa), you already have a key. If not, keep going.)

# 2️⃣ Generate a new SSH key (recommended: ed25519)
ssh-keygen -t ed25519 -C "your_email@example.com"
➡️ When prompted:
File location: Press Enter (default is fine)
Passphrase: Optional but recommended (extra security)

This creates:
Private key: ~/.ssh/id_ed25519
Public key: ~/.ssh/id_ed25519.pub
----------------------------------------------------------------------------------
# 3️⃣ Start the SSH agent and add your key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_your_private_key

# 4️⃣ Copy your public key
cat ~/.ssh/id_ed25519.pub

# 5️⃣ Add the SSH key to GitHub
Go to GitHub → Settings
Click SSH and GPG keys
Click New SSH key
Title: something like Laptop, Work PC, or EC2 Instance
Paste the key
Click Add SSH key
---------------------------------------------------------------------------------
# 6️⃣ Test the connection
ssh -T git@github.com

# 7️⃣ Use SSH instead of HTTPS for repos
git clone git@github.com:Ernest41k/CI-Terraform-AWS-Infra-Deployment-project.git
======================================================================================================

# How to Set Up Secrets in Github
1️⃣ Go to the repository (not your profile). Secrets are repo-specific, not account-wide.
2️⃣ Click Settings (repo settings)
3️⃣ In the left sidebar, look for: secrets and variables --> Select "Actions"
4️⃣ Click “New repository secret”
This is where you add:
TFVARS_PROD
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY

# After Pushing Changes to Github Follow the following steps:
- Navigate to the project repository
- Click on "Actions"


# Useful Git Commands
- git log --> Full commit history with details
- git reset --soft 3e4873f6ca0d38dc64191d94f5e43fdc313dc233  | Discards all changes completely
- git log --oneline — Confirms HEAD now points to the target commit

# 👉 Best practice after merging a feature branch
(Most common & clean): Create a NEW feature branch for new work
git checkout main
git pull
git checkout -b feature/next-work
