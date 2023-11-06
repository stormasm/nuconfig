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