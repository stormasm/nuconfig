
$env.config.show_banner = false

def cls [] {
    $"(ansi cls)(ansi clsb)(ansi reset)(ansi home)"
}

$env.PROMPT_COMMAND_RIGHT = { "" }

source "/Users/ma/j/tmp17/nuconfig/alias.nu"
