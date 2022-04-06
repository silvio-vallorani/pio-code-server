# syntax=docker/dockerfile:1
FROM linuxserver/code-server:latest
RUN apt update && apt install wget -y && wget https://github.com/microsoft/vscode-cpptools/releases/download/v1.9.7/cpptools-linux.vsix -O /tmp/cpptools-linux.vsix && wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/platformio/vsextensions/platformio-ide/2.4.3/vspackage -O /tmp/platformio-ide.vsix
RUN code-server --extensions-dir ~/.vscode/extensions --install-extension platformio.platformio-ide
RUN code-server --extensions-dir ~/.vscode/extensions --install-extension GitHub.github-vscode-theme
RUN code-server --extensions-dir ~/.vscode/extensions --install-extension GitHub.remotehub
RUN code-server --extensions-dir ~/.vscode/extensions --install-extension GitHub.vscode-pull-request-github
RUN code-server --extensions-dir ~/.vscode/extensions --install-extension GitHub.copilot
RUN code-server --extensions-dir ~/.vscode/extensions --install-extension eamodio.gitlens


https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode/vsextensions/cpptools/1.9.7/vspackage?targetPlatform=linux-x64