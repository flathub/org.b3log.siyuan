#!/bin/sh
set -oue pipefail
export FLATPAK_ID="${FLATPAK_ID:-org.b3log.siyuan}"
export TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"
zypak-wrapper /app/siyuan/siyuan --ozone-platform-hint=auto --enable-features=UseOzonePlatform,WaylandWindowDecorations,Vulkan --gtk-version=4 $@