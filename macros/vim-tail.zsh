#!/bin/zsh
#------------------------------------------------------------------------------
#  Description: Works like "tail -f" .
#   Maintainer: Martin Krischik (krischik@users.sourceforge.net)
#    Copyright: (C) 2006 … 2022 Martin Krischik
#      Version: 3.0
#      History: 17.11.2007 Now with Startup Scripts.
#               17.11.2022 Add macros to dain bundle
#    Help Page: tail.txt
#------------------------------------------------------------------------------

setopt No_X_Trace;

for I ; do
    if
        gvim --servername "tail" --remote-send ":TabTail ${I}<CR>";
    then
        ; # do nothing
    else
        gvim --servername "tail" --remote-silent +":TabTail %<CR>" "${I}"
    fi
    sleep 1;
done;

#------------------------------------------------------------------------------
#   Copyright (C) 2006  Martin Krischik
#
#   Vim is Charityware - see ":help license" or uganda.txt for licence details.
#------------------------------------------------------------------------------
# vim: set nowrap tabstop=8 shiftwidth=4 softtabstop=4 noexpandtab :
# vim: set textwidth=0 filetype=zsh foldmethod=marker nospell :
