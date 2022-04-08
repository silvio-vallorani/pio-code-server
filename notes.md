# https://hub.docker.com/r/linuxserver/code-server
# https://open-vsx.org/
# https://www.vsixgallery.com/
# https://marketplace.visualstudio.com/vscode

# https://marketplace.visualstudio.com/items?itemName=platformio.platformio-ide
# https://marketplace.visualstudio.com/_apis/public/gallery/publishers/platformio/vsextensions/platformio-ide/2.4.3/vspackage
# https://marketplace.visualstudio.com/_apis/public/gallery/publishers/platformio/vsextensions/platformio-ide/latest/vspackage

# ms-vscode.cpptools
# https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
# https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode/vsextensions/cpptools/1.9.7/vspackage?targetPlatform=linux-x64
# RUN wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" https://github.com/microsoft/vscode-cpptools/releases/download/v1.9.7/cpptools-linux.vsix -O /tmp/cpptools-linux.vsix

# come formattare la URL per scaricare file VSIX da Marketplace Microsoft
# https://${publisher}.gallery.vsassets.io/_apis/public/gallery/publisher/${publisher}/extension/${extension name}/${version}/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage


# docker build -t code-server .
# docker run -it -p 8443:8443 code-server

aaa