def cls [] {
    $"(ansi cls)(ansi clsb)(ansi reset)(ansi home)"
}

$env.PROMPT_COMMAND_RIGHT = { "" }

# The default config record. This is where much of your global configuration is setup.
$env.config = {
  # true or false to enable or disable the welcome banner at startup
  show_banner: false
}

def get-nupm-home []: nothing -> path {
    $env.NUPM_HOME? | default ($nu.home-path | path join ".nupm") | path expand }

get-nupm-home
use nupm

source ~/j/tmp17/nuconfig/alias.nu
