#!/data/data/com.termux/files/usr/bin/sh

if [ $# = 0 ] && [ -f /data/data/com.termux/files/usr/etc/motd ] && [ ! -f ~/.hushlogin ] && [ -z "$TERMUX_HUSHLOGIN" ]; then
        cat /data/data/com.termux/files/usr/etc/motd
else
        # This variable shouldn't be kept set.
        unset TERMUX_HUSHLOGIN
fi

# TERMUX_VERSION env variable has been exported since v0.107 and PATH was being set to following value in <0.104. Last playstore version was v0.101.
if [ $# = 0 ] && [ -f /data/data/com.termux/files/usr/etc/motd-playstore ] && [ -z "$TERMUX_VERSION" ] && [ "$PATH" = "/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/bin/applets" ]; then
        printf '\033[0;31m'; cat /data/data/com.termux/files/usr/etc/motd-playstore; printf '\033[0m'
fi

if [ -G ~/.termux/shell ]; then
        export SHELL="`realpath ~/.termux/shell`"
else
        for file in /data/data/com.termux/files/usr/bin/bash /data/data/com.termux/files/usr/bin/sh /system/bin/sh; do
                if [ -x $file ]; then
                        export SHELL=$file
                        break
                fi
        done
fi

# TERMUX_APP_PACKAGE_MANAGER should be exported by termux-app v0.119.0+ itself
if [ -z "${TERMUX_APP_PACKAGE_MANAGER-}" ]; then
        if { [ -n "$(command -v dpkg)" ] && dpkg --compare-versions "$TERMUX_VERSION" lt 0.119.0; } ||   # apt
                { [ -n "$(command -v vercmp)" ] && [ "$(vercmp "$TERMUX_VERSION" 0.119.0)" = "-1" ]; }; then # pacman
                # For the correct operation of scripts that work with the package manager
                export TERMUX_MAIN_PACKAGE_FORMAT="debian"
        fi
fi

if [ -f /data/data/com.termux/files/usr/lib/libtermux-exec.so ]; then
        export LD_PRELOAD=/data/data/com.termux/files/usr/lib/libtermux-exec.so
        $SHELL -c "coreutils --coreutils-prog=true" > /dev/null 2>&1 || unset LD_PRELOAD
fi

if [ -f /data/data/com.termux/files/usr/etc/termux-login.sh ]; then
        . /data/data/com.termux/files/usr/etc/termux-login.sh
fi

if [ -n "$TERM" ]; then
        exec "$SHELL" -l "$@"
else
        exec "$SHELL" "$@"
fi