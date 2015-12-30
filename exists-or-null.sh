#!/bin/sh
#
# mutt has no mechanism to include a source file only if it exists,
# so we fake it by invoking with the idiom:
#
#     :source "$my_muttroot/exists-or-null.sh /path/to/file |"
#
# which causes mutt to read the file contents (empty if dne, ie no-op)
#
# scott@smemsh.net
# http://smemsh.net/src/.mutt/
# http://spdx.org/licenses/GPL-2.0
#
##############################################################################

test -e $1 && test -r $1 && cat $1
