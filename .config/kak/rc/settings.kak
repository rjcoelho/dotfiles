# display line numbers
add-highlighter global/ number-lines -separator ' ' 
# highlight opposing brackets
add-highlighter global/ show-matching 

# use ripgrep, see https://github.com/mawww/kakoune/wiki/Grep
set global grepcmd 'rg --column' 
