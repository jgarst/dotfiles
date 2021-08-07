from ptpython.repl import PythonRepl


def configure(repl: PythonRepl) -> None:
    repl.vi_mode = True
    repl.enable_fuzzy_completion = True
    # `history search` can not be used with `complete while typing`
    repl.enable_history_search = True
    repl.confirm_exit = False
    repl.highlight_matching_parenthesis = True
    repl.color_depth = "DEPTH_24_BIT"

    # The signatures shown aren't complete enough that I want to have them on
    # by default.
    # For example itertools.islice shows the `(iterable, stop)` signature,
    # but not the `(iterable, start, stop, step)` signature, which is
    # potentially confusing.
    repl.show_signature = False

    # Adding a custom colorscheme.
    # See `ptpython/layout.py` and `ptpython/style.py` for all possible tokens.
    # _custom_ui_colorscheme = {
    #     "prompt": "bg:#eeeeff #000000 bold",
    #     "status-toolbar": "bg:#ff0000 #000000",
    # }
    # repl.install_ui_colorscheme("my-colorscheme"
    #                            , Style.from_dict(_custom_ui_colorscheme))
    # repl.use_ui_colorscheme("my-colorscheme")

    # https://github.com/prompt-toolkit/ptpython/blob/master/
    #   examples/ptpython_config/config.py
    # contains tools to add custom shortcuts, events, and text rewriting.
