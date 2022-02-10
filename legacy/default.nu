# Checks the -f switch and tests the new $nothing variable
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

# simple ls example where size is > 10kb
def mylsb [x] {
    ls $x | where size > 10kb
}

# simple ls example where size is < 10kb
def mylss [x] {
    ls $x | where size < 10kb
}

# Show the location of the config-path
def configpath [] {
  cd $(echo $nu | get config-path | path dirname)
}

alias configp = configpath

### copy the config.toml from the config-path to the github repo

### There are 2 ways to get to the config path
### (1) cd $(echo $nu | get config-path | path dirname)
### (2) cd $(config path | path dirname)

# save your config.toml file in nuconfig
def nuconfigsave [] {
  cd $(echo $nu | get config-path | path dirname)
  cp config.toml /j/tmp26/nuconfig
  cd /j/tmp26/nuconfig
}

# do a diff of the of the config.toml file to make sure they are the same
def chkconfig [] {
  let v1 =  $(echo $nu | get config-path | path dirname)
  diff $v1 /j/tmp26/nuconfig/config.toml
}

# simple command to show all of your aliases
def aliases [] {
  echo $scope.aliases | pivot
}

# simple command to show that the if command needs the else clause to work
def ifme [] {
  if $true { echo $true } { echo $false }
}
