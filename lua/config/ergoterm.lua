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
  init = function()
    local function ensure_loaded()
      return require("ergoterm")
    end

    _G.numbered_tty = _G.numbered_tty or {}

    local function toggle_term_id(n)
      local ergoterm = ensure_loaded()
      if not _G.numbered_tty[n] then
        local layout = "float"

        if n == 0 then
          layout = "below"
        end

        _G.numbered_tty[n] = ergoterm:new({
          name = string.format("terminal_%d", n),
          layout = layout,
        })
      end
      _G.numbered_tty[n]:toggle()
    end

    -- Standard "terminal 0"
    vim.keymap.set("n", "<leader>t0", function ()
      toggle_term_id(0)
    end, { noremap = true, silent = true })

    -- Numbered floating terminals 1..=9
    for i = 1, 9 do
      vim.keymap.set("n", "<leader>t" .. i, function()
        toggle_term_id(i)
      end, { noremap = true, silent = true, desc = "Toggle terminal " .. i })
    end
  end,
}
