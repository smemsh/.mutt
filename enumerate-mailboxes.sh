#!/bin/bash
#
# enumerate-mailboxes.sh
#   produces a mutt 'mailboxes' directive with all maildirs below given path
#
# - takes a maildir tree root as arg1
# - enumerates all maildirs in the hierarchy below
# - prints on stdout, space delimited, prefixed with 'mailboxes'
# - suitable for mutt ala ':source "eunmerate-mailboxes.sh $my_maildirs |"'
# - todo: algorithm should check for all 3 cur+new+tmp then take parent
# - note: no plans to handle spaces in paths
# - note: implemented as :source because mutt does not interpolate in backticks
# - status: production
#
# scott@smemsh.net
# http://smemsh.net/src/.mutt/enumerate-mailboxes.sh
# http://spdx.org/licenses/GPL-2.0.html
#

main ()
{
	maildirs=($(
		find $1 \
		-mindepth 1 \
		-type d \
		-regextype posix-extended \
		-not -regex '.*/(cur|new|tmp)$' \
		-printf '%p ' \
		;
	))
	echo "mailboxes ${maildirs[*]}"
}

main "$@"
