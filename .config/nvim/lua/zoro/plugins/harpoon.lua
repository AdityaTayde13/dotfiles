return {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add buffer to harpoon"})
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Toggle harpoon quick menu"})

            vim.keymap.set("n", "<C-f>", function() harpoon:list():select(1) end, {desc = "Select the first buffer in harpoon" })
            vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, {desc = "Select the second buffer in harpoon" })
            vim.keymap.set("n", "<C-i>", function() harpoon:list():select(3) end, {desc = "Select the third buffer in harpoon" })
            vim.keymap.set("n", "<C-o>", function() harpoon:list():select(4) end, {desc = "Select the forth buffer in harpoon"})
            vim.keymap.set("n", "<leader><C-f>", function() harpoon:list():replace_at(1) end, {desc = "Replace first buffer in harpoon"})
            vim.keymap.set("n", "<leader><C-t>", function() harpoon:list():replace_at(2) end, {desc = "Replace second buffer in harpoon"})
            vim.keymap.set("n", "<leader><C-i>", function() harpoon:list():replace_at(3) end, {desc = "Replace third buffer in harpoon"})
            vim.keymap.set("n", "<leader><C-o>", function() harpoon:list():replace_at(4) end, {desc = "Replace forth buffer in harpoon"})
        end
}
