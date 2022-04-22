
### file and directory locations

alias dl = cd ~/k/dl
alias ds = cd ~/j/tmp17/dataset/csv
alias dv = cd ~/j/tmp99/datavault
alias j = cd ~/j/
alias k = cd ~/k/
alias nuprom = cd ~/j/tmp17/nupro
alias nuprome = cd ~/j/tmp17/nupro
alias pc = cd ~/j/tmp17/parse-camino
alias rex = cd ~/j/tmp17/rust-examples
alias rexs = cd ~/j/tmp17/rust-examples/sqlite
alias shake = cd ~/j/tmp17/nuproj/shakespeare

### standard

alias c = clear
alias configpath = (config path | path dirname)
alias du = ^du
alias e = emacs -nw
alias h = history
alias hc = help commands
alias l = ls
alias ll = ^ls -l
alias lsr = ^ls -lR
alias ltm = ^ls -lt
alias rm = rm -q
alias s = source
alias t = time

### rust
alias cb = cargo build
alias cf = cargo fmt
alias cre = cargo run --example
alias ct = cargo test
alias cta = cargo test --all --all-features
alias ctan = cargo test --all

alias cnr = cargo nextest run
alias cnrn = cargo nextest run --no-capture
alias cnrno = cargo nextest run --no-capture

### nushell

alias eq = cd ~/j/tmp17/nushell
alias nubook = cd ~/j/tmp17/nushell.github.io
alias nun = cd ~/j/tmp17/nunotes

alias fil = cd ~/j/tmp17/nushell/crates/nu-command/src/filters
alias nucom = cd ~/j/tmp17/nushell/crates/nu-command
alias nucomt = cd ~/j/tmp17/nushell/crates/nu-command/tests
alias nupro = cd ~/j/tmp17/nushell/crates/nu-protocol
alias tff = cd ~/j/tmp17/nushell/tests/fixtures/formats

### tmp17

alias nutop = cd ~/j/tmp17/nushell
alias nuconfig = cd "/Users/ma/Library/Application Support/nushell"
alias nuconfigme = cd ~/j/tmp17/nuconfig

alias nud = cd ~/j/tmp17/nudata
alias nudata = cd ~/j/tmp17/nudata
alias nus = cd ~/j/tmp17/nuscripts
alias nusn = cd ~/j/tmp17/nu_scripts
alias nutmp = cd ~/j/tmp17/nutmp
alias rsql = cd ~/j/tmp17/rusqlite

### git

alias ga = git add
alias gb = git branch
alias gc = git clone
alias gco = ^git checkout
alias gcom = git commit -m
alias gcmw = git commit -m mw
alias gd = git diff
alias gls = git log --stat

alias gp = git pull
alias gpeq = git pull https://github.com/nushell/nushell main
alias gpnu = git pull https://github.com/nushell/nushell main
alias gpnusn = git pull https://github.com/nushell/nu_scripts main

alias gpo = git push origin
alias gpro = git remote prune origin
alias grpo = git remote prune origin
alias grso = git remote show origin

alias gs = git status
alias jjj = ^git push origin main

alias cls = $"(ansi cls)(ansi clsb)(ansi reset)(ansi home)"

let t1x = [[name, grade]; [Alice, A], [Betty, B], [Carl, C], [David, D], [Edward, E], [Frank, F]]
alias l = ^ls -l
alias t = date
alias nuconfig = cd "/Users/ma/Library/Application Support/nushell"
## test comment

alias nuconfigsave = cp config.nu ~/j/tmp17/nuconfig


### directory aliases

alias t10 = cd ~/j/tmp10
alias t17 = cd ~/j/tmp17
alias t18 = cd ~/j/tmp18
alias t26 = cd ~/j/tmp26
alias t99 = cd ~/j/tmp99

### plugins
#
#  To register a plugin
#    (1) cbaf
#    (2) cd target/debug
#    (3) register -e capnp nu_plugin_query

def chkplug [] {
    help commands | where is_plugin == true
}

def hh [] {
    history | last 28
}

### get rid of the purple timestamp on the right side
let-env PROMPT_COMMAND_RIGHT = { "" }
