vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
local undodir = os.getenv("USERPROFILE") .. "\\.vim\\undodir"

-- Create the undodir if it doesn't exist
local function create_dir_if_not_exists(dir)
    local ok, err, code = os.rename(dir, dir)
    if not ok and code == 13 then -- if the directory does not exist
        os.execute('mkdir "' .. dir .. '"')
    end
end

create_dir_if_not_exists(undodir)

vim.opt.undodir = undodir
vim.opt.undofile = true -- Enable persistent undo
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
