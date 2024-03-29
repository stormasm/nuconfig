def delete-nupm [] {
  let nupm_home = get-nupm-home
  rm -fr $nupm_home
}

def install-nupm [] {
    cd /Users/ma/j/tmp17/nupm
    nu --commands $"use ($env.PWD)/nupm/"
    nupm install --force --path .
}

def install-nu-git-manager [] {
  nupm install --path /Users/ma/j/tmp17/nu-git-manager --force
}

def install-ngm [] {
  nupm install --path /Users/ma/j/tmp17/nu-git-manager --force
}

def get-nupm-home []: nothing -> path {
    $env.NUPM_HOME? | default ($nu.home-path | path join ".nupm") | path expand
}

cd /Users/ma/j/tmp17/nupm
use nupm
cd /Users/ma/j/tmp17/nu-git-manager
use nu-git-manager *
