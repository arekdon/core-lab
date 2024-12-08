# mkdir -p $HOME/.local/bin
# export PATH="$HOME/.local/bin:$PATH"
# source ~/.bashrc
# curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/master/install.sh | bash -s -- -b $HOME/.local/bin
# tfswitch --version

# Prepare disk

mkdir -p /aws/mde/mde/lab

# Change both ownership and permissions recursively for the lab directory
sudo chown -R cloudshell-user:cloudshell-user /aws/mde/lab
sudo chmod -R 755 /aws/mde/lab

# Clone lab folder
git clone https://github.com/arekdon/core-lab.git

# Set up tfenv in the lab directory
git clone https://github.com/tfutils/tfenv.git /aws/mde/lab/tfenv
mkdir -p /aws/mde/lab/bin
ln -s /aws/mde/lab/tfenv/bin/* /aws/mde/lab/bin/

# Update PATH to include the new location
echo 'export PATH="/aws/mde/lab/tfenv/bin:$PATH"' >> ~/.bash_profile

# Download aliases to the lab directory
curl -o /aws/mde/lab/terraform_aliases https://raw.githubusercontent.com/zer0beat/terraform-aliases/master/.terraform_aliases
curl -o /aws/mde/lab/terragrunt_aliases https://raw.githubusercontent.com/zer0beat/terraform-aliases/master/.terragrunt_aliases

# Add the following to ~/.bash_profile
echo '# Terraform aliases
[ -f /aws/mde/lab/terraform_aliases ] && source /aws/mde/lab/terraform_aliases

# Terragrunt aliases
[ -f /aws/mde/lab/terragrunt_aliases ] && source /aws/mde/lab/terragrunt_aliases

# Print terraform commands before execution
function terraform() { echo "+ terraform $@"; command terraform $@; }

# Print terragrunt commands before execution
function terragrunt() { echo "+ terragrunt $@"; command terragrunt $@; }' >> ~/.bash_profile

# Reload the bash profile
source ~/.bash_profile