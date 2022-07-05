
#                                       _                                    
#      o O O   ___     __     __ __    (_)     ___   __ __ __  ___      _ _  
#     o       (_-<    / _|    \ V /    | |    / -_)  \ V  V / / -_)    | '_| 
#    TS__[O]  /__/_   \__|_   _\_/_   _|_|_   \___|   \_/\_/  \___|   _|_|_  
#   {======|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| 
#  ./o--000'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 
# ===========================================================================
#

if(!require(scviewer))
  devtools::load_all(path='scviewer', export_all=FALSE) # load from the current directory

date() %>%
  sprintf(fmt='=== (app) scviewer started at: %s') %>%
  cat(sep='\n', file=stderr())

packageVersion('scviewer') %>%
  sprintf(fmt='=== (app) using scviewer version %s') %>%
  cat(sep='\n', file=stderr())

find.package('scviewer') %>%
  sprintf(fmt='=== (app) scviewer package is located at: %s') %>%
  cat(sep='\n', file=stderr())

scviewer::run_scviewer() # launch the app
