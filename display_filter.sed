#!/bin/sed
#
# display_filter.sed
#   filter before displaying message in mutt pager
#
# - usage: set display_filter = "sed -f $my_muttroot/display_filter.sed"
# - todo: is there a way to use recursion so this has arbitrary depth?
# - todo: can mutt invoke directly if mode 01? like it does for backticks?
# - status: production
#
# scott@smemsh.net
# http://smemsh.net/src/.mutt/display_filter.sed
# http://spdx.org/licenses/GPL-2.0.html
#

/^.*--.*Autoview.* --]/d
/^.*--.*Attachment.* --]/d
/^.*--.*Type.* --]/d
s/^> > > > > > > > > >\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > > > > >>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > > > > >\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > > > >>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > > > >>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > > > >\([^ ]\)/> > > > > > > > \1/
s/^> > > > > > >>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > > >>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > > >>\([^ ]\)/> > > > > > > > \1/
s/^> > > > > > >\([^ ]\)/> > > > > > > \1/
s/^> > > > > >>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > >>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > > >>>\([^ ]\)/> > > > > > > > \1/
s/^> > > > > >>\([^ ]\)/> > > > > > > \1/
s/^> > > > > >\([^ ]\)/> > > > > > \1/
s/^> > > > >>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > >>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > > >>>>\([^ ]\)/> > > > > > > > \1/
s/^> > > > >>>\([^ ]\)/> > > > > > > \1/
s/^> > > > >>\([^ ]\)/> > > > > > \1/
s/^> > > > >\([^ ]\)/> > > > > \1/
s/^> > > >>>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > >>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > > >>>>>\([^ ]\)/> > > > > > > > \1/
s/^> > > >>>>\([^ ]\)/> > > > > > > \1/
s/^> > > >>>\([^ ]\)/> > > > > > \1/
s/^> > > >>\([^ ]\)/> > > > > \1/
s/^> > > >\([^ ]\)/> > > > \1/
s/^> > >>>>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > >>>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> > >>>>>>\([^ ]\)/> > > > > > > > \1/
s/^> > >>>>>\([^ ]\)/> > > > > > > \1/
s/^> > >>>>\([^ ]\)/> > > > > > \1/
s/^> > >>>\([^ ]\)/> > > > > \1/
s/^> > >>\([^ ]\)/> > > > \1/
s/^> > >\([^ ]\)/> > > \1/
s/^> >>>>>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> >>>>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^> >>>>>>>\([^ ]\)/> > > > > > > > \1/
s/^> >>>>>>\([^ ]\)/> > > > > > > \1/
s/^> >>>>>\([^ ]\)/> > > > > > \1/
s/^> >>>>\([^ ]\)/> > > > > \1/
s/^> >>>\([^ ]\)/> > > > \1/
s/^> >>\([^ ]\)/> > > \1/
s/^> >\([^ ]\)/> > \1/
s/^>>>>>>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^>>>>>>>>>\([^ ]\)/> > > > > > > > > \1/
s/^>>>>>>>>\([^ ]\)/> > > > > > > > \1/
s/^>>>>>>>\([^ ]\)/> > > > > > > \1/
s/^>>>>>>\([^ ]\)/> > > > > > \1/
s/^>>>>>\([^ ]\)/> > > > > \1/
s/^>>>>\([^ ]\)/> > > > \1/
s/^>>>\([^ ]\)/> > > \1/
s/^>>\([^ ]\)/> > \1/
s/^>\([^ ]\)/> \1/
