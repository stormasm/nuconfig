
let $config = {
  filesize_metric: $true
  table_mode: rounded
  use_ls_colors: $true
  color_config: {
    separator: yd
    leading_trailing_space_bg: black
    header: cb
    date: pu
    filesize: ub
    row_index: yb

    bool: red
    int: green
    duration: red
    range: red
    float: red
    #string: red
    nothing: red
    binary: red
    cellpath: red
  }
  history_config: {
    page_size: 100
    selector: ":"
    text_style: dark_gray
     selected_text_style: green_reverse
   }
  keybindings: {
    name: complete_hint
    modifier: none
    keycode: tab
    mode: emacs
    event: {send: historyhintcomplete }
   }
  use_grid_icons: $true
  footer_mode: always # always, never, auto, "5"
  animate_prompt: $false
}

source /j/tmp17/nuconfig/alias.nu
