###############################################################################
# Dandelion is a virtual machine used for Grand Rounds work
###############################################################################

source "${GR_HOME}/engineering/bash/aws_cli.sh"
source "${GR_HOME}/engineering/bash/aws-env.sh"
source "${GR_HOME}/engineering/bash/redshift.sh"
source "${GR_HOME}/engineering/bash/vault-authentication.sh"

path+=("${GR_HOME}/engineering/bin")
export PATH

export AWS_DEFAULT_ROLE=developer

###############################################################################
# local tab completion scripts
###############################################################################
# git defaults to showing all remote branches, which is way too many branches.
#
# This replaces the remote refs function with nothing
zstyle ':completion::complete:git-checkout:argument-1:remote-branch-refs-noprefix' command "echo"
zstyle ':completion::complete:git-switch:argument-1:remote-branch-refs-noprefix' command "echo"
