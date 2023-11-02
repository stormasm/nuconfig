$env.NUPM_HOME = ($nu.home-path | path join ".nupm")

$env.NU_LIB_DIRS = [
    ($env.NUPM_HOME | path join "modules")
]

$env.PATH = (
    $env.PATH
        | split row (char esep)
        | prepend ($env.NUPM_HOME | path join "scripts")
        | uniq
)

$env.PROMPT_COMMAND_RIGHT = { "" }

$env.GIT_REPOS_HOME  = ($nu.home-path | path join "nu-git-manager/repos")
$env.GIT_REPOS_CACHE = ($nu.home-path | path join "nu-git-manager/cache.nuon")

$env.alias-path = ($nu.default-config-dir | path join "alias.nu")
$env.NU_CONFIG_ME = ("/Users/ma/j/tmp17/nuconfig")
