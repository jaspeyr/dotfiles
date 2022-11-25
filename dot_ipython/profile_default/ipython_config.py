c = get_config()

c.InteractiveShell.autoindent = False
c.InteractiveShell.confirm_exit = False
c.TerminalIPythonApp.display_banner = False

c.InteractiveShellApp.extensions = ["autoreload"]
# ^X^E opens editor
c.InteractiveShell.extra_open_editor_shortcuts = True

# enable sqlite history
c.HistoryManager.enabled = True
c.InteractiveShell.enable_history_search = True

# autoimport extension
c.InteractiveShellApp.exec_lines.append(
    "try:"
    "\n    %load_ext ipython_autoimport"
    "\nexcept ImportError: pass"
)