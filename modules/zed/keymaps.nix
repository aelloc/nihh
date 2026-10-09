{ ... }: [
  {
    context = "Workspace && !CommandPalette && !Editor";
    bindings = {
      "space f w" = "project_search::ToggleFocus";
      "space f f" = "file_finder::Toggle";
      "space c" = "pane::CloseActiveItem";
      "space q" = "zed::Quit";
      "space t" = "terminal_panel::ToggleFocus";
    };
  }
  {
    context = "Editor && vim_mode == insert";
    bindings = {
      "j k" = "vim::NormalBefore";
    };
  }
  {
    context = "Terminal";
    bindings = {
    };
  }
  {
    context = "Editor && vim_mode == normal";
    bindings = {
      "space f w" = "project_search::ToggleFocus";
      "space f f" = "file_finder::Toggle";
      "space c" = "pane::CloseActiveItem";
      "space q" = "zed::Quit";
      "space t" = "terminal_panel::ToggleFocus";
      "space w" = "workspace::Save";
      "space /" = "vim::ToggleComments";
      "space o" = "project_panel::ToggleFocus";
    };
  }
  {
    context = "ProjectPanel";
    bindings = {
      "space o" = "editor::ToggleFocus";
    };
  }
  {
    context = "Editor && vim_mode == visual";
    bindings = {
      "space /" = "vim::ToggleComments";
    };
  }
]
