# This checks the -f switch to see if it was supplied
# and tests the new $nothing variable
def nada [
    --flat(-f)
] {
    if $flat == $nothing {
        echo $true
    } {
        echo $false
    }
}

# This shows an alternate way to check for nothing
def nada2 [
    --flat(-f)
] {
    let flat = $(= $flat | empty?)

    if $flat {
        echo $true
    } {
        echo $false
    }
}

def mylsb [x] {
    ls $x | where size > 10kb
}

def mylss [x] {
    ls $x | where size < 10kb
}

def configpath [] {
  cd $(echo $nu | get config-path | path dirname)
}

alias configp = configpath

### copy the config.toml from the config-path to the github repo

### There are 2 ways to get to the config path
### (1) cd $(echo $nu | get config-path | path dirname)
### (2) cd $(config path | path dirname)

def nuconfigsave [] {
  cd $(echo $nu | get config-path | path dirname)
  cp config.toml /j/tmp26/nuconfig
  cd /j/tmp26/nuconfig
}

### do a diff of the of the config.toml file to make sure they are the same

def chkconfig [] {
  let v1 =  $(echo $nu | get config-path | path dirname)
  diff $v1 /j/tmp26/nuconfig/config.toml
}
