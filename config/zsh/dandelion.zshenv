###############################################################################
# Dandelion is a virtual machine used for Grand Rounds work
###############################################################################


###############################################################################
# Grand Rounds specific variables

# The email address associated with the Grand Rounds GPG key
export GR_GPGKEY_ADDRESS="jared.garst@grandrounds.com"

export INITIALS="JHG"

# Path to Grand Rounds code
export GR_HOME="${HOME}/src"

export GR_USERNAME="jared.garst"
export GR_ABBREV_USERNAME="jgarst"

export KEY_SUFFIX="grandrounds.com"
export GIT_ORG="consultingmd"


###############################################################################
# VM specific settings

# VMware products have invisible mouse cursors without software rendering
export WLR_NO_HARDWARE_CURSORS=1
