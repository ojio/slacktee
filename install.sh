#!/bin/bash -e

DIR=$(cd "$(dirname "$0")"; pwd -P)
INSTALL_PATH=${1-/usr/local/bin}
SCRIPT="slacktee.sh"
SOURCE="https://cdn.rawgit.com/ojio/slacktee/master/$SCRIPT"

# cp "$DIR/$SCRIPT" "$INSTALL_PATH"
curl -Lo "$INSTALL_PATH/$SCRIPT" "$SOURCE"
chmod +x "$INSTALL_PATH/$SCRIPT"

echo "$SCRIPT has been installed to $INSTALL_PATH"

"$INSTALL_PATH/$SCRIPT" --setup
