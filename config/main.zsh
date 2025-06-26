#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function jenv::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_JENV_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_JENV_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_JENV_PATH}"/config/linux.zsh
      ;;
    esac
}

jenv::config::main::factory