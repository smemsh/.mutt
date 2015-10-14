#!/bin/bash
#
# enumerate-mailboxes.sh
#   script to enumerate maildirs for mutt :mailboxes directive
#
# - takes a maildir tree root as arg1
# - tries to enumerate all maildirs in the hierarchy below
# - prints them on stdout, space delimited
# - suitable for eg mutt :maildir `enumerate-mailboxes.sh`
# - todo: algorithm should check for all 3 cur+new+tmp then take parent
# - note: no plans to handle spaces in paths
# - status: production
#
# scott@smemsh.net
# http://smemsh.net/src/.mutt/enumerate-mailboxes.sh
# http://spdx.org/licenses/GPL-2.0.html
#

main ()
{
	find $1 \
	-mindepth 1 \
	-type d \
	-regextype posix-extended \
	-not -regex '.*/(cur|new|tmp)$' \
	-printf '%p ' \
	;
}

main "$@"
