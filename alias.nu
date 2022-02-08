alias c = clear
alias configpath = (config path | path dirname)
alias h = history
alias hc = help commands
alias l = ls
alias ll = ^ls -l
alias s = source
alias t = time

### rust
alias cb = cargo build
alias ct = cargo test
alias cta = cargo test --all --all-features
alias ctan = cargo test --all

### nushell

alias eq = cd /j/tmp17/engine-q
alias t26 = cd /j/tmp26

alias nun = cd /j/tmp17/nunotes

alias fil = cd /j/tmp17/engine-q/crates/nu-command/src/filters
alias nucom = cd /j/tmp17/engine-q/crates/nu-command
alias nucomt = cd /j/tmp17/engine-q/crates/nu-command/tests
alias tff = cd /j/tmp17/engine-q/tests/fixtures/formats

alias nutop = cd /j/tmp17/engine-q
alias nuconfig = cd "/Users/ma/Library/Application Support/nushell"
alias nuconfigme = cd /j/tmp17/nuconfig

### alias nuconfig = cd /j/tmp17/nuconfig
alias nus = cd /j/tmp17/nuscripts
alias nutmp = cd /j/tmp17/nutmp

### git

alias ga = git add
alias gc = git clone
alias gco = git checkout
alias gcom = git commit -m
alias gcmw = git commit -m mw
alias gd = git diff
alias gls = git log --stat
alias gp = git pull
alias gpo = git push origin
alias gpro = git remote prune origin
alias grpo = git remote prune origin
alias grso = git remote show origin

alias gs = git status
alias jjj = git push origin main


let t1x = [[name, grade]; [Alice, A], [Betty, B], [Carl, C], [David, D], [Edward, E], [Frank, F]]
alias l = ^ls -l
alias t = date
alias nuconfig = cd "/Users/ma/Library/Application Support/nushell"
## test comment
alias t17 = cd "/j/tmp17"
alias nuconfigsave = cp config.nu /j/tmp17/nuconfig

### plugins
#
#  To register a plugin
#    (1) cbaf
#    (2) cd target/debug
#    (3) register -e capnp nu_plugin_query

def chkplug [] {
    help commands | where is_plugin == $true
}
