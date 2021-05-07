wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd63] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install -y code
code --install-extension aaron-bond.better-comments --user-data-dir=$HOME
code --install-extension austin.code-gnu-global --user-data-dir=$HOME
code --install-extension davidanson.vscode-markdownlint --user-data-dir=$HOME
code --install-extension eamodio.gitlens --user-data-dir=$HOME
code --install-extension esbenp.prettier-vscode --user-data-dir=$HOME
code --install-extension geoffkaile.latex-count --user-data-dir=$HOME
code --install-extension james-yu.latex-workshop --user-data-dir=$HOME
code --install-extension mdickin.markdown-shortcuts --user-data-dir=$HOME
code --install-extension ms-azuretools.vscode-docker --user-data-dir=$HOME
code --install-extension ms-python.python --user-data-dir=$HOME
code --install-extension ms-vscode.cpptools --user-data-dir=$HOME
code --install-extension ms-vscode-remote.remote-containers --user-data-dir=$HOME
code --install-extension ms-vscode-remote.remote-ssh --user-data-dir=$HOME
code --install-extension ms-vscode-remote.remote-wsl --user-data-dir=$HOME
code --install-extension ms-vscode-remote.vscode-remote-extensionpack --user-data-dir=$HOME
code --install-extension pkief.material-icon-theme --user-data-dir=$HOME
code --install-extension yzane.markdown-pdf --user-data-dir=$HOME
code --install-extension yzhang.markdown-all-in-one --user-data-dir=$HOME
code --install-extension teabyii.ayu --user-data-dir=$HOME
code --install-extension mhutchie.git-graph --user-data-dir=$HOME
code --install-extension hypnoes.word-count --user-data-dir=$HOME
code --install-extension ban.spellright --user-data-dir=$HOME
