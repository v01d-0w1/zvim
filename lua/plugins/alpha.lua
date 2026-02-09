return {
    'goolord/alpha-nvim',
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            "                        ███                 ",
            "                       ░░░                  ",
            " █████████ █████ █████ ████  █████████████  ",
            "░█░░░░███ ░░███ ░░███ ░░███ ░░███░░███░░███ ",
            "░   ███░   ░███  ░███  ░███  ░███ ░███ ░███ ",
            "  ███░   █ ░░███ ███   ░███  ░███ ░███ ░███ ",
            " █████████  ░░█████    █████ █████░███ █████",
            "░░░░░░░░░    ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ ",
            "                                            ",
            "                                            ",
        }

        dashboard.section.buttons.val = {
            dashboard.button("Space  e", "  New file", ":ene <BAR> startinsert<CR>"),
            dashboard.button("Space ff", "󰈞  Find file", ":Telescope find_files<CR>"),
            dashboard.button("Space fh", "󰊄  Recently opened files", ":Telescope oldfiles<CR>"),
            dashboard.button("Space fg", "󰈬  Find word", ":Telescope live_grep<CR>"),
            dashboard.button("Space sm", "  Browse Sessions", ":Telescope session-lens search_session<CR>"),
            dashboard.button("Space sl", "  Open last session", ":lua load_last_session()<CR>")
        }

        dashboard.config.layout = {
            dashboard.section.header,
            dashboard.section.buttons,
            dashboard.section.footer,
        }

        alpha.setup(dashboard.config)
    end
}
