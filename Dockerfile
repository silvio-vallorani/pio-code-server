
# syntax=docker/dockerfile:1

FROM linuxserver/code-server:latest

RUN apt update && apt upgrade -y && apt install -y wget python3 python3-pip python3-venv python3-distutils 
RUN pip install robotframework

RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://ms-vscode.gallery.vsassets.io/_apis/public/gallery/publisher/ms-vscode/extension/cpptools/1.9.7/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage?targetPlatform=linux-x64 -O /tmp/cpptools-linux.vsix
# RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://platformio.gallery.vsassets.io/_apis/public/gallery/publisher/platformio/extension/platformio-ide/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/platformio-ide.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://github.com/silvio-vallorani/pio-code-server/raw/main/pio-ide-docker.vsix -O /tmp/platformio-ide.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://ms-python.gallery.vsassets.io/_apis/public/gallery/publisher/ms-python/extension/python/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/python.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://GitHub.gallery.vsassets.io/_apis/public/gallery/publisher/GitHub/extension/vscode-pull-request-github/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/vscode-pull-request-github.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://GitHub.gallery.vsassets.io/_apis/public/gallery/publisher/GitHub/extension/github-vscode-theme/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/github-vscode-theme.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://GitHub.gallery.vsassets.io/_apis/public/gallery/publisher/GitHub/extension/copilot/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/copilot.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://eamodio.gallery.vsassets.io/_apis/public/gallery/publisher/eamodio/extension/gitlens/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/gitlens.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://donjayamanne.gallery.vsassets.io/_apis/public/gallery/publisher/donjayamanne/extension/githistory/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/githistory.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://codezombiech.gallery.vsassets.io/_apis/public/gallery/publisher/codezombiech/extension/gitignore/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/gitignore.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://mhutchie.gallery.vsassets.io/_apis/public/gallery/publisher/mhutchie/extension/git-graph/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/git-graph.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://jgclark.gallery.vsassets.io/_apis/public/gallery/publisher/jgclark/extension/vscode-todo-highlight/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/vscode-todo-highlight.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://Gruntfuggly.gallery.vsassets.io/_apis/public/gallery/publisher/Gruntfuggly/extension/todo-tree/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/todo-tree.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://oderwat.gallery.vsassets.io/_apis/public/gallery/publisher/oderwat/extension/indent-rainbow/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/indent-rainbow.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://PKief.gallery.vsassets.io/_apis/public/gallery/publisher/PKief/extension/material-icon-theme/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/material-icon-theme.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://alefragnani.gallery.vsassets.io/_apis/public/gallery/publisher/alefragnani/extension/Bookmarks/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/Bookmarks.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://christian-kohler.gallery.vsassets.io/_apis/public/gallery/publisher/christian-kohler/extension/path-intellisense/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/path-intellisense.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://tombonnike.gallery.vsassets.io/_apis/public/gallery/publisher/tombonnike/extension/vscode-status-bar-format-toggle/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/vscode-status-bar-format-toggle.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://yzhang.gallery.vsassets.io/_apis/public/gallery/publisher/yzhang/extension/markdown-all-in-one/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/markdown-all-in-one.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://adpyke.gallery.vsassets.io/_apis/public/gallery/publisher/adpyke/extension/codesnap/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/codesnap.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://DavidAnson.gallery.vsassets.io/_apis/public/gallery/publisher/DavidAnson/extension/vscode-markdownlint/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/vscode-markdownlint.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://cschlosser.gallery.vsassets.io/_apis/public/gallery/publisher/cschlosser/extension/doxdocgen/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/doxdocgen.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://robocorp.gallery.vsassets.io/_apis/public/gallery/publisher/robocorp/extension/robocorp-code/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/robocorp-code.vsix
RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://robocorp.gallery.vsassets.io/_apis/public/gallery/publisher/robocorp/extension/robotframework-lsp/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage -O /tmp/robotframework-lsp.vsix

RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/cpptools-linux.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/platformio-ide.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/python.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/vscode-pull-request-github.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/github-vscode-theme.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/copilot.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/gitlens.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/githistory.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/gitignore.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/git-graph.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/vscode-todo-highlight.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/todo-tree.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/indent-rainbow.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/material-icon-theme.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/Bookmarks.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/path-intellisense.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/vscode-status-bar-format-toggle.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/markdown-all-in-one.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/codesnap.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/vscode-markdownlint.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/doxdocgen.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/robocorp-code.vsix
RUN /app/code-server/code-server --extensions-dir /config/extensions --install-extension /tmp/robotframework-lsp.vsix

RUN source /config/.platformio/penv/bin/
RUN pio home --host:0.0.0.0 &

EXPOSE 8008
