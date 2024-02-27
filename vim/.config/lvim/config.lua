-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

-- default vim settings
vim.opt.relativenumber = true -- relative line numbers
-- default settings
lvim.log.level = "warn"
lvim.format_on_save = true

-- keybindings
lvim.leader = "space"
-- lvim.keys.normal_mode["gk"] = "<Cmd>lua vim.lsp.buf.hover()<CR>"
lvim.lsp.buffer_mappings.normal_mode['gk'] = { vim.lsp.buf.hover, "Show documentation" }

lvim.lsp.buffer_mappings.normal_mode['K'] = nil
lvim.keys.normal_mode["J"] = "3j"
lvim.keys.normal_mode["K"] = "3k"
lvim.keys.visual_mode["J"] = "3j"
lvim.keys.visual_mode["K"] = "3k"
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
-- colors
-- additional plugins
