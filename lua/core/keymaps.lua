local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then 
    options = vim.tbl_extend('force', options, opts) 
  end 
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- === Behaviours === --- 

map(
  "n",
  "<leader>,",
  "<cmd>Telescope buffers show_all_buffers=true<CR>",
  opts,
  "Movement",
  "switch_buffers",
  "Switch buffers"
)

map(
  "n",
  "<leader>:",
  "<cmd>Telescope<CR>",
  opts,
  "Editor",
  "command_history",
  "Command history"
)

map(
  "n",
  "<leader>b[",
  '<cmd>lua require("bufferline").cycle(-1)<CR>',
  opts,
  "Buffer",
  "prev_buffer_alt",
  "Goto previous buffer"
)
map(
  "n",
  "<leader>b]",
  '<cmd>lua require("bufferline").cycle(1)<CR>',
  opts,
  "Buffer",
  "next_buffer_alt",
  "Goto next buffer"
)


map(
  "n",
  "<leader>ff",
  "<cmd>Telescope find_files<CR>",
  opts,
  "Editor",
  "find_files_alt",
  "Find files"
)

map(
  "n",
  "<leader>fr",
  "<cmd>Telescope oldfiles<CR>",
  opts,
  "Editor",
  "recent_files",
  "Recently opened files"
)


-- === MOVIMENTS  === --- 
map(
  "n",
  "<a-j>",
  ":m .+1<CR>==",
  opts,
  "Editor",
  "normal_move_line_down",
  "Normal Move line down"
)
map(

  "n",
  "<a-k>",
  ":m .-2<CR>==",
  opts,
  "Editor",
  "normal_move_line_up",
  "Normal Move line up"
)

map(
  "i",
  "<a-j>",
  "<esc>:m .+1<CR>==gi",
  opts,
  "Editor",
  "instert_move_line_down",
  "Insert Move line down"
)

map(
  "v",
  "<a-j>",
  ":m '>+1<CR>gv=gv",
  opts,
  "Editor",
  "visual_move_line_down",
  "Visual Move line down"
)
map(
  "v",
  "<a-k>",
  ":m '<-2<CR>gv=gv",
  opts,
  "Editor",
  "visual_move_line_up",
  "Visual Move line up"
)

map(
  "t",
  "<leader><Esc>",
  "<C-\\><C-n>",
  opts,
  "Editor",
  "exit_insert_term",
  "Exit insert mode (inside a terminal)"
)


map('n', '<leader>c', ':nohl<CR>')
map('n', '<leader>wh', '<C-w>h')
map('n', '<leader>wj', '<C-w>j')
map('n', '<leader>wk', '<C-w>k')
map('n', '<leader>wl', '<C-w>l')
map('n', "<leader>ww", "<C-w>p")
map("n", "<leader>wq", "<C-W>c")
map("n", "<leader>wJ", "<C-W>s", opts, "Window", "split_below", "Split window below")
map("n", "<leader>wL", "<C-W>v", opts, "Window", "split_right", "Split window right")

map(
  "n",
  "<leader>ql",
  "<cmd>lua require('persistence').load({ last = true })<CR>",
  opts,
  "Editor",
  "restore_session",
  "Restore previously saved session"
)

map("n", "<leader>qs", "<cmd>lua require('persistence').load()<CR>")

-- GIT 
map(
  "n",
  "<leader>gl",
  '<cmd>TermExec cmd="git pull"<CR>',
  opts,
  "Git",
  "git_pull",
  "Pull remote changes"
)
map(
  "n",
  "<leader>gp",
  '<cmd>TermExec cmd="git push"<CR>',
  opts,
  "Git",
  "git_push",
  "Push git changes"
)
map(
  "n",
  "<leader>gs",
  "<cmd>Telescope git_status<CR>",
  opts,
  "Git",
  "git_status",
  "Browse git status"
)
map(
  "n",
  "<leader>gB",
  "<cmd>Telescope git_branches<CR>",
  opts,
  "Git",
  "git_branches",
  "Browse git branches"
)

map(
  "n",
  "<leader>gc",
  "<cmd>Telescope git_commits<CR>",
  opts,
  "Git",
  "git_commits",
  "Browse git commits"
)


-- === LSP ===  -- 

map(
  "n",
  "<leader>lca",
  "<cmd>lua vim.lsp.buf.code_action()<CR>",
  opts,
  "LSP",
  "code_action_alt",
  "Code actions"
)

map(
  "n",
  "<leader>lcq",
  "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>",
  opts,
  "LSP",
  "diagnostic_list",
  "Diagnostics into location list"
)

-- === TELESCOPE === --
map(
  "n", 
  "<leader>.", 
  ":Telescope file_browser<CR>", 
  {noremap = true}
)


-- MISC
map('n', '<leader>r', ':so %<CR>')

map('n', '<leader>s', ':w<CR>')
map('n', '<leader>q', ':qa!<CR>')



