
### file and directory locations

alias dl = cd ~/k/dl
alias ds = cd ~/j/tmp17/dataset/csv
alias dv = cd ~/j/tmp99/datavault
alias j = cd ~/j/
alias k = cd ~/k/
alias nuprom = cd ~/j/tmp17/nupro
alias nuprome = cd ~/j/tmp17/nupro
alias pc = cd ~/j/tmp17/parse-camino
alias pol = cd ~/j/tmp06/polars
alias rex = cd ~/j/tmp17/rust-examples
alias rexs = cd ~/j/tmp17/rust-examples/sqlite
alias shake = cd ~/j/tmp17/nuproj/shakespeare

### standard

alias c = clear
# alias configpath = (config path | path dirname)
alias du = ^du
alias e = emacs -nw
alias h = history
alias hc = help commands
alias l = ls
alias ll = ^ls -l
alias lsr = ^ls -lR
alias ltm = ^ls -lt
alias shs = python3 -m http.server 3000
alias t = time

### rust
alias cb = cargo build
alias cf = cargo fmt
alias cr = cargo run
alias cre = cargo run --example
alias ct = cargo test
alias cta = cargo test --all --all-features
alias ctan = cargo test --all

alias cnr = cargo nextest run
alias cnrn = cargo nextest run --no-capture
alias cnrno = cargo nextest run --no-capture

### nushell

alias eq = cd ~/j/tmp17/nushell
alias rl = cd ~/j/tmp17/reedline
alias nubook = cd ~/j/tmp17/nushell.github.io
alias nuno = cd ~/j/tmp17/nunotes

alias fil = cd ~/j/tmp17/nushell/crates/nu-command/src/filters
alias nucom = cd ~/j/tmp17/nushell/crates/nu-command
alias nucomt = cd ~/j/tmp17/nushell/crates/nu-command/tests
alias nudf = cd ~/j/tmp17/nushell/crates/nu-command/src/dataframe
alias nudfr = cd ~/j/tmp17/nushell/crates/nu-command/src/dataframe
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
alias gprl = git pull https://github.com/nushell/reedline main
alias gpnusn = git pull https://github.com/nushell/nu_scripts main

alias gpo = git push origin
alias gpro = git remote prune origin
alias grpo = git remote prune origin
alias grso = git remote show origin

alias gs = git status
alias jjj = ^git push origin main

#alias cls = $"(ansi cls)(ansi clsb)(ansi reset)(ansi home)"

let t1x = [[name, grade]; [Alice, A], [Betty, B], [Carl, C], [David, D], [Edward, E], [Frank, F]]
alias l = ^ls -l
alias t = date
alias nuconfig = cd "/Users/ma/Library/Application Support/nushell"
## test comment

alias nuconfigsave = cp config.nu ~/j/tmp17/nuconfig

### directory aliases

alias t06 = cd ~/j/tmp06
alias t10 = cd ~/j/tmp10
alias t14 = cd ~/j/tmp14
alias t17 = cd ~/j/tmp17
alias t18 = cd ~/j/tmp18
alias t26 = cd ~/j/tmp26
alias t99 = cd ~/j/tmp99

### scripts
alias wgo = cd ~/j/tmp17/nutmp/scripts/weather

### iox
alias ioxg = cd ~/j/tmp06/influxdb_iox

alias iox   = ./target/debug/influxdb_iox
alias iox01 = iox -vv write company_sensors test_fixtures/lineproto/metrics.lp --host http://localhost:8080
alias iox02 = iox query company_sensors "SELECT * FROM cpu LIMIT 10"

alias ioxn = cd ~/j/tmp06/ioxnotes
alias ioxnu = cd ~/j/tmp06/influxdb_iox/iox_nu
alias nuiox = cd ~/j/tmp06/influxdb_iox/nu_iox/src/iox
alias nuioxt = cd ~/j/tmp06/influxdb_iox/nu_iox

### arrow and data fusion

alias dfgt = cd ~/j/tmp06/arrow-datafusion
alias dfg = cd ~/j/tmp06/arrow-datafusion/datafusion

### new-nu-parser
alias nnpgo = cd ~/j/tmp16/new-nu-parser

### nu-git-manager
alias ngm = cd ~/j/tmp17/nu-git-manager
alias ngmg = cd ~/j/tmp17/nu-git-manager
alias gmg = cd ~/j/tmp17/nu-git-manager
alias ngmi = nupm install --path ~/j/tmp17/nu-git-manager --force

### nupm
alias nupmg = cd ~/j/tmp17/nupm
alias pmg = cd ~/j/tmp17/nupm
alias gpm = cd ~/j/tmp17/nupm

alias installnupm = nupm install --force --path .

alias nut = nupm test

alias gpgm = git pull https://github.com/amtoine/nu-git-manager main
alias gppm = git pull https://github.com/nushell/nupm main

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
#let-env PROMPT_COMMAND_RIGHT = { "" }

def hme [] {
  history | get command
}

def hmei [] {
  history | get command_line
}

def stars [] {
    http get https://api.github.com/repos/nushell/nushell | get stargazers_count
}

def cls [] {
    $"(ansi cls)(ansi clsb)(ansi reset)(ansi home)"
}

def scopemodstd [] {
  scope modules | where name =~ '^std' | get submodules.0
}

def sumconfig [] {
  sum $nu.config-path ($env.NU_CONFIG_ME | path join "config.nu")
  sum $nu.env-path ($env.NU_CONFIG_ME | path join "env.nu")
  sum $env.alias-path ($env.NU_CONFIG_ME | path join "alias.nu")
  sum $env.nupm-path ($env.NU_CONFIG_ME | path join "nupm.nu")
}

def cpconfig [] {
  cp $nu.config-path $env.NU_CONFIG_ME
  cp $nu.env-path $env.NU_CONFIG_ME
  cp $env.alias-path $env.NU_CONFIG_ME
  cp $env.nupm-path $env.NU_CONFIG_ME
  sumconfig
}

def cpconfig-reverse [] {
  cp ($env.NU_CONFIG_ME | path join "config.nu") $nu.default-config-dir
  cp ($env.NU_CONFIG_ME | path join "env.nu") $nu.default-config-dir
  cp ($env.NU_CONFIG_ME | path join "alias.nu") $nu.default-config-dir
  cp ($env.NU_CONFIG_ME | path join "nupm.nu") $nu.default-config-dir
  sumconfig
}
