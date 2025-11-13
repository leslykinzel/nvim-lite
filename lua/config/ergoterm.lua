return {
  "waiting-for-dev/ergoterm.nvim",
  opts = {
    terminal_defaults = {
      start_in_insert = false,
      size = {
        below = "25%",
        above = "25%",
        left = "50%",
        right = "50%"
      },
    },
  },
  init = function ()
    local function ensure_loaded()
      return require("ergoterm")
    end

    -- Numbered terminals 1..=9
    _G.numbered_tty = _G.numbered_tty or {}

    local function toggle_term_id(n)
      local ergoterm = ensure_loaded()
      if not _G.numbered_tty[n] then
        _G.numbered_tty[n] = ergoterm:new({
          name = string.format("terminal_%d", n),
          layout = "float",
          sticky = true,
          persist_most = true,
        })
      end
      _G.numbered_tty[n]:toggle()
    end

    for i = 1, 9 do
      vim.keymap.set("n", "<leader>t" .. i, function ()
        toggle_term_id(i)
      end, { noremap = true, silent = true, desc = "Toggle terminal " .. i })
    end
  end,
}
