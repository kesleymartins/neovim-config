local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

function Insert_code(snippet)
  vim.api.nvim_put({ snippet.data }, "", true, false)

  if false == snippet.center then
    return
  end

  Center_cursor(math.floor(#snippet.data / 2))
end

function Center_cursor(offset)
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  cursor_pos[2] = cursor_pos[2] - offset
  vim.api.nvim_win_set_cursor(0, cursor_pos)
end

local engine = {}

engine.build_snippet = function(data)
  vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = data.pattern,
    callback = function()
      keymap("n", data.keymap, function()
        Insert_code(data.snippet)
      end, opts)
    end,
  })
end

return engine
