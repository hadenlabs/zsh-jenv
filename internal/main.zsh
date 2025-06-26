#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function jenv::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_JENV_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_JENV_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_JENV_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_JENV_PATH}"/internal/helper.zsh
}

jenv::internal::main::factory

jenv::internal::load

if ! core::exists jenv; then core::install jenv; fi
if ! core::exists sdk; then jenv::internal::sdk::install; fi