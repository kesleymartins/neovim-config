local engine = require("snippets.engine")

local data = {
  pattern = { "*.html.erb" },
  keymap = "<C-.>",
  snippet = {
    data = "<%  %>",
    center = true,
  },
}

engine.build_snippet(data)
