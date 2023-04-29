-- Usable heirline components
local M = {}
-- Show harpoon index of current buffer if it is mark
M.index = {
    provider = function()
        local Marked = require("harpoon.mark")
        local filename = vim.api.nvim_buf_get_name(0)
        local succuss, index = pcall(Marked.get_index_of, filename)
        if succuss and index and index > 0 then
            return "󱡀 " .. index .. " "
        else
            return
        end
    end,
}

return M
