wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd63] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
code --install-extension aaron-bond.better-comments
code --install-extension austin.code-gnu-global
code --install-extension davidanson.vscode-markdownlint
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension geoffkaile.latex-count
code --install-extension james-yu.latex-workshop
code --install-extension mdickin.markdown-shortcuts
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension pkief.material-icon-theme
code --install-extension yzane.markdown-pdf
code --install-extension yzhang.markdown-all-in-one
code --install-extension teabyii.ayu
code --install-extension mhutchie.git-graph
code --install-extension hypnoes.word-count
code --install-extension ban.spellright
