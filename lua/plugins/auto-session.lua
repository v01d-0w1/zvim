return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      log_level = "error",
      auto_session_enable_last_session = false,
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,
      auto_session_use_git_branch = false,
      session_lens = {
        load_on_setup = false,
      },
      auto_session_suppress_dirs = {
        "~/", "~/Downloads", "/",
      },
      session_dir = vim.fn.stdpath("config") .. "/sessions/",
    })

    -- Load last session function
    _G.load_last_session = function()
      local session_dir = vim.fn.stdpath("config") .. "/sessions/"
      local sessions = vim.fn.glob(session_dir .. "*.vim", false, true)

      table.sort(sessions, function(a, b)
        return vim.fn.getftime(a) > vim.fn.getftime(b)
      end)

      if #sessions > 0 then
        vim.cmd("source " .. sessions[1])
        vim.notify("Loaded session: " .. vim.fn.fnamemodify(sessions[1], ":t"), vim.log.levels.INFO)
      else
        vim.notify("No sessions found.", vim.log.levels.WARN)
      end
    end
  end,
}

