vim.opt.termguicolors = true
local bufferline = require('bufferline')

bufferline.setup {
    options = {
        style_preset = bufferline.style_preset.minimal,
        hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' }
        },
        custom_areas = {
            right = function()
                local result = {}
                local seve = vim.diagnostic.severity
                local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
                local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
                local info = #vim.diagnostic.get(0, { severity = seve.INFO })
                local hint = #vim.diagnostic.get(0, { severity = seve.HINT })

                if error ~= 0 then
                    table.insert(result, { text = "  " .. error, fg = "#EC5241" })
                end

                if warning ~= 0 then
                    table.insert(result, { text = "  " .. warning, fg = "#EFB839" })
                end

                if hint ~= 0 then
                    table.insert(result, { text = "  " .. hint, fg = "#A3BA5E" })
                end

                if info ~= 0 then
                    table.insert(result, { text = "  " .. info, fg = "#7EA9A7" })
                end
                return result
            end,
        },
        offsets = {
            {
                filetype = "Neotree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        }
    }
}