export EDITOR="vim.gtk3"
export R_LIBS_USER="/home/mlbernauer/.R/"
export PATH="$PATH:/opt/pulsesecure/bin"
export PATH="$PATH:/home/mlbernauer/.local/bin/"
export PATH="$PATH:/home/mlbernauer/.cargo/bin"
export PATH="/home/mlbernauer/perl5/bin${PATH:+:${PATH}}"
export PATH="/home/mlbernauer/edirect:${PATH}"
export CENSUS_KEY="9c7c139cfda34bf3a28ef305a272da210fbf1828"
export CENSUS_API_KEY="2abf85470d393b3bc249771dd1f1acaffe8be7a8"
export GITHUB_TOKEN="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"
export GITHUB_USER="mlbernauer"
export MIMIC="/home/mlbernauer/hdd/mimic-iv/db/mimic-iv.db"

alias connect-speaker="bluetoothctl connect 5C:FB:7C:C3:64:A8"
alias connect-headphones="bluetoothctl connect F8:AB:E5:46:36:17"
alias connect-earphones="bluetoothctl connect F4:4E:FD:00:05:02"
alias xclip="xclip -selection c"
alias weather='curl wttr.in/albuquerque'
alias stitch="perl -ne 's/!include// ? print qx/cat \$_/ : print'"
alias nvimr-help="cat ~/.nvim-r.txt"

rmdrender () { Rscript -e "rmarkdown::render('$1')"; }
rmdserve () { Rscript -e "rmarkdown::run('$1')"; }
temp-sh () { curl -F file=@$1 "https://temp.sh/upload"; echo; }
shiny-run () { Rscript -e "shiny::runApp(\"$1\", port = 8081)"; }
golem () { Rscript -e "golem::$1"; }
