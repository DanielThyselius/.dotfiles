-- GENERAL
vim.g.mapleader = " "

-- reload source
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
-- chmod +x on current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set({"v", "n", "i"}, "<M-s>", "<esc>:w<cr>") -- save faster
vim.keymap.set({"v", "n", "i"}, "<C-.>", "<esc>:")
vim.keymap.set("i", "<C-c>", "<Esc>") -- make <C-c> behave like <Esc>
vim.keymap.set("n", "Q", "<nop>") -- .ake Q do nothing
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Unknown....
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")



-- TEXT EDIT
-- search and replace on word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- greatest remap ever (does what?)
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to null register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- format code with LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Add ctrl + backspace to delete word 
vim.keymap.set("i", "<C-BS>", "<C-w>")
vim.keymap.set("i", "<M-BS>", "<C-w>") -- adding alt bind for portability 

vim.keymap.set("v", "y", "may`a") --  yanking lines so cursor stays still

vim.keymap.set("n", "U", "<C-r>") -- redo on the same key as undo!

-- NAVIGATION 
-- open explorer (Project Explore)
vim.keymap.set("n", "<leader>pe", vim.cmd.Ex)



-- MOVEMENT
-- make H and L act like I and A
vim.keymap.set({"n","v"}, "H", "^")
vim.keymap.set({"n","v"}, "L", "$")

-- jump a page up/down whilest keeping cursor position
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-up>", "<C-u>zz")
vim.keymap.set("n", "<C-down>", "<C-d>zz")

-- Navigate panes with arrows or hjkl
vim.keymap.set({"n", "i", "v"}, "<M-up>", "<C-w>k")
vim.keymap.set({"n", "i", "v"}, "<M-down>", "<C-w>j")
vim.keymap.set({"n", "i", "v"}, "<M-left>", "<C-w>h")
vim.keymap.set({"n", "i", "v"}, "<M-right>", "<C-w>l")

vim.keymap.set({"n", "i", "v"}, "<M-k>", "<C-w>k")
vim.keymap.set({"n", "i", "v"}, "<M-j>", "<C-w>j")
vim.keymap.set({"n", "i", "v"}, "<M-h>", "<C-w>h")
vim.keymap.set({"n", "i", "v"}, "<M-l>", "<C-w>l")

-- rwap orientation of panes 
vim.keymap.set("n", "<leader>tv", "<C-w>t<C-w>H") -- to horizontal
vim.keymap.set("n", "<leader>th", "<C-w>t<C-w>K") -- to vertical

vim.keymap.set("n", "<M-v>", ":vsplit<cr>")
vim.keymap.set("n", "<M-h>", ":split<cr>")

-- go to next what? would this be better to jump up down pages?
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Alt + j/k to move line(s) in all modes
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line down(n)
vim.keymap.set("i", "<A-k>", "<cmd>norm! :m .-2<CR>==") -- move line up(i)
vim.keymap.set("i", "<A-j>", "<cmd>norm! :m .+1<CR>==") -- move line down(i)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move selected line(s) up(v)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move selected line(s) down(v)

-- Alt + up/down arrows to move line(s) in all modes
vim.keymap.set("n", "<A-up>", ":m .-2<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-down>", ":m .+1<CR>==") -- move line down(n)
vim.keymap.set("i", "<A-up>", "<Esc> :m .-2<CR>==") -- move line up(i)
vim.keymap.set("i", "<A-down>", "<Esc> :m .+1<CR>==") -- move line down(i)
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv") -- move selected line(s) up(v)
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv") -- move selected line(s) up(v)
