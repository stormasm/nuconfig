
$env.config.show_banner = false

### so the "view blocks" command doesn't show cruft
### for more details see core team channel 12/19/24
$env.config.hooks.display_output = { if (term size).columns >= 100 { table -e } else { table } }

def cls [] {
    $"(ansi cls)(ansi clsb)(ansi reset)(ansi home)"
}

$env.PROMPT_COMMAND_RIGHT = { "" }

source "/Users/ma/j/tmp17/nuconfig/alias.nu"
