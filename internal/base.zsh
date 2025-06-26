#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function jenv::internal::sdk::install {
    message_info "Installing ${JENV_PACKAGE_NAME}"
    curl -s "https://get.sdkman.io" | bash
    message_success "Installed ${JENV_PACKAGE_NAME}"
}

function jenv::internal::load {
  jenv::internal::sdk::load
  jenv::internal::jenv::load
}

function jenv::internal::sdk::load {
  export SDKMAN_DIR="${HOME}/.sdkman"
  # shellcheck source=/dev/null
  source "${SDKMAN_DIR}/bin/sdkman-init.sh"
}

function jenv::internal::jenv::load {
  export PATH="${HOME}/.jenv/bin:${PATH}"
  eval "$(jenv init -)"
}

function jenv::add {
  local version="${1}"
  jenv add "${JENV_SDK_MAN_CANDIDATES_PATH}/${version}"
}

function jenv::internal::version::all::install {
    if ! core::exists sdk; then
        message_warning "not found sdk"
        return
    fi

    for version in "${JENV_JAVA_VERSIONS[@]}"; do
        message_info "Install version of java ${version}"
        sdk install java "${version}"
        jenv::add "${version}"
        message_success "Installed version of java ${version}"
    done
    sdk default java "${JENV_JAVA_VERSION_GLOBAL}"
    message_success "Installed versions of Java"

}

function jenv::internal::version::global::install {
    if ! core::exists sdk; then
        message_warning "not found sdk"
        return
    fi
    message_info "Installing version global of java ${JENV_JAVA_VERSION_GLOBAL}"
    sdk install java "${JENV_JAVA_VERSION_GLOBAL}"
    sdk default java "${JENV_JAVA_VERSION_GLOBAL}"
    jenv::add "${JENV_JAVA_VERSION_GLOBAL}"
    message_success "Installed version global of java ${JENV_JAVA_VERSION_GLOBAL}"
}

function jenv::internal::upgrade {
  message_warning "Not implemented"
}