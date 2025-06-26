#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export JENV_PACKAGE_NAME=jenv
export JENV_MESSAGE_BREW="Please install brew or use antibody bundle hadenlabs/zsh-brew"
export JENV_MESSAGE_NOT_FOUND="this not found installed"

export JENV_SDK_MAN_CANDIDATES_PATH="${HOME}/.sdkman/candidates/java"

export JENV_JAVA_VERSIONS=(
    24.0.1-tem
    21.0.7-tem
    17.0.15-tem
    11.0.27-tem
)

export JENV_JAVA_VERSION_GLOBAL=21.0.7-tem