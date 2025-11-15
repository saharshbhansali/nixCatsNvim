return {
    {
        'ggandor/leap.nvim',
        enabled = true,
        keys = {
            { 's', mode = { 'n', 'x', 'o' }, desc = 'Leap Forward to' },
            { 'S', mode = { 'n', 'x', 'o' }, desc = 'Leap Backward to' },
        },
        config = function(_, opts)
            local leap = require 'leap'
            for k, v in pairs(opts) do
                leap.opts[k] = v
            end
            leap.set_default_keymaps(true)
            vim.keymap.del({ 'x', 'o' }, 'x')
            vim.keymap.del({ 'x', 'o' }, 'X')
        end,
    },
}
