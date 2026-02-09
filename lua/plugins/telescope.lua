return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").load_extension("session-lens")

        require("telescope").setup({
            extensions = {
                ["session-lens"] = {
                    path_display = { "shorten" },
                    cwd_only = false,
                    session_dir = vim.fn.stdpath("config") .. "/sessions",
                },
            },
        })
    end
}
