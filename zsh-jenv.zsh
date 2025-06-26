#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines functions zsh_jenv for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#
ZSH_JENV_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_JENV_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_JENV_PATH}"/core/main.zsh

# shellcheck source=/dev/null
source "${ZSH_JENV_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_JENV_PATH}"/pkg/main.zsh
