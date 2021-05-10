FROM gitpod/workspace-full

RUN brew update && brew install \
    gawk coreutils pre-commit tfenv terraform-docs \
    tflint liamg/tfsec/tfsec instrumenta/instrumenta/conftest \
    && brew cleanup
RUN tfenv install latest && tfenv use latest

#.gitpod.bashrc /home/gitpod/.bashrc.d/custom