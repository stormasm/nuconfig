let my_theme = {
    separator: purple
    leading_trailing_space_bg: white
    header: gb
    date: wd
    filesize: c
    row_index: cb
    bool: red
    int: green
    duration: blue_bold
    range: purple
    float: red
    string: white
    nothing: red
    binary: red
    cellpath: cyan

    # just take defaults
    # flatshape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b}
    # flatshape_bool: $base0d
    # flatshape_int: { fg: $base0e attr: b}
    # flatshape_float: { fg: $base0e attr: b}
    # flatshape_range: { fg: $base0a attr: b}
    # flatshape_internalcall: { fg: $base0c attr: b}
    # flatshape_external: $base0c
    # flatshape_externalarg: { fg: $base0b attr: b}
    # flatshape_literal: $base0d
    # flatshape_operator: $base0a
    # flatshape_signature: { fg: $base0b attr: b}
    # flatshape_string: $base0b
    # flatshape_filepath: $base0d
    # flatshape_globpattern: { fg: $base0d attr: b}
    # flatshape_variable: $base0e
    # flatshape_flag: { fg: $base0d attr: b}
    # flatshape_custom: {attr: b}

    hints: dark_gray
}

let config = {
    filesize_metric: $true
    table_mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
    use_ls_colors: $true
    #   color_config: $base16_theme
    color_config: $my_theme
    use_grid_icons: $true
    footer_mode: always #always, never, number_of_rows, auto
    animate_prompt: $false
    float_precision: 2
    use_ansi_coloring: $true
    filesize_format: "b" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
    env_conversions: {
        "PATH": {
            from_string: { |s| $s | split row (char esep) }
            to_string: { |v| $v | str collect (char esep) }
        }
        "PATHEXT": {
            from_string: { |s| $s | split row (char esep) }
            to_string: { |v| $v | str collect (char esep) }
        }
        "PSMODULEPATH": {
            from_string: { |s| $s | split row (char esep) }
            to_string: { |v| $v | str collect (char esep) }
        }
        "LS_COLORS": {
            from_string: { |s| $s | split row (char esep) }
            # from_string: { |s| $s | split row '=' | $"(ansi -e ($in.1))m($in.0)(ansi reset) ($in.1)" } | split column ' '
            to_string: { |v| $v | str collect (char esep) }
        }
        "DYLD_FALLBACK_LIBRARY_PATH": {
            from_string: { |s| $s | split row (char esep) }
            to_string: { |v| $v | str collect (char esep) }
        }
    }
    edit_mode: emacs # emacs, vi
    max_history_size: 10000
    # log_level: trace
    menu_config: {
        columns: 20
        col_width: 5
        col_padding: 1
        text_style: { fg: "#00aa00" }
        selected_text_style: { fg: "#000000" bg: "#00aa00" attr: b}
   }

    keybindings: [
    {
      name: complete_hint_chunk
      modifier: alt
      keycode: right
      mode: emacs
      event: [
          [{ send: historyhintwordcomplete }]
          [{ edit: { cmd: movewordright }}]
      ]
    }
    {
      name: un_complete_hint_chunk
      modifier: alt
      keycode: left
      mode: emacs
      event: [
          # { edit: { cmd: deleteword } }
          { edit: { cmd: backspaceword } }
      ]
    }
    {
        name: trigger-history
        modifier: control
        keycode: char_x
        mode: emacs
        event: [
            [{ send: menu name: history_menu }]
            [{ send: menupagenext }]
        ]
    }
    {
        name: trigger-history-previous
        modifier: control
        keycode: char_z
        mode: emacs
        event: [
            [{ send: menu name: history_menu }]
            [{ send: menupageprevious }]
        ]
    }
    {
        name: completion
        modifier: control
        keycode: char_t
        mode: emacs # emacs vi_normal vi_insert
        event: { send: menu name: context_menu }
    }
    {
        name: prev_shell
        modifier: control
        keycode: char_p
        mode: emacs
        event: [
            { edit: { cmd: clear } }
            { edit: { cmd: insertchar value: p } }
            { send: enter }
        ]
    }
    {
        name: next_shell
        modifier: control
        keycode: char_n
        mode: emacs
        event: [
            { edit: { cmd: clear } }
            { edit: { cmd: insertchar value: n } }
            { send: enter }
        ]
    }
    {
        name: fzf
        modifier: control
        keycode: char_f
        mode: emacs
        event: [
            { edit: { cmd: clear } }
            { edit: { cmd: insertstring value: 'cd (ls | where type == dir | each {|it| $it.name} | str collect (char nl) | fzf | decode utf-8 | str trim)' } }
            { send: enter }
        ]
    }
    {
        name: "until found event"
        modifier: control
        keycode: char_r
        mode: emacs
        event:[
            # when a list of lists is used, an untilfound event is created. this means that the first event to be
            # successful will be the only event to happen from the list of events for this keybinding.
            # in this example, when pressing ctr-r the completion event takes precedence over contextmenu and
            # contextmenu takes precedence over moving to the next element in the menu
            [{ send: historyhintcomplete }]
            [{ send: menu name: context_menu }]
            [{ send: menunext }]
        ]
      }
    ]

    history_config: {
      page_size: 10
      selector: ":"
      text_style: "#ffbf00"
      selected_text_style: { fg: "#ffbf00" attr: r }
      marker: "H> "
  }
  quick_completions: $true
}
