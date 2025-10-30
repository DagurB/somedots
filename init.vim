let mapleader=' '

call plug#begin('~/.vim/plugged')
Plug 'petRUShka/vim-sage'
" Plug 'jbyuki/venn.nvim'
Plug 'tpope/vim-commentary'
Plug 'luochen1990/rainbow'
Plug 'lervag/vimtex'
Plug 'DagurB/transparentwolf'
Plug 'sjl/badwolf'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nicwest/vim-workman'
Plug 'vimwiki/vimwiki'
Plug 'Shirk/vim-gas' " AT&meme syntax highlighting

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
" Plug 'nvim-treesitter/nvim-treesitter-configs'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" nvim-cmp annoyingly requires a snippet engine
Plug 'dcampos/nvim-snippy'
Plug 'dcampos/cmp-snippy'
Plug 'honza/vim-snippets'
Plug 'dylon/vim-antlr'

" Plug 'bergercookie/asm-lsp'

" Plug 'ms-jpq/coq_nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

" Plug 'DagurB/vim-mypy'

" Plug 'editorconfig/editorconfig-vim'

Plug 'simrat39/rust-tools.nvim' " meme lang tools
Plug 'nvim-lua/plenary.nvim' " required for nvim-dap
Plug 'mfussenegger/nvim-dap' " debug for meme lang

Plug 'j-hui/fidget.nvim', { 'tag': 'legacy' } " LSP progress thingie

" Plug 'p00f/cphelper.nvim' " comprog
Plug 'Sirsireesh/vim-dlang-phobos-highlighter'

Plug 'tpope/vim-fugitive'

" Plug 'ludovicchabant/vim-gutentags'

Plug 'exu/pgsql.vim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
" Plug 'kristijanhusak/vim-dadbod-completion'

Plug 'wyyqyl/vim-smali'

Plug 'iden3/vim-circom-syntax' " zksnark lang

" Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim'

" soyva
Plug 'mfussenegger/nvim-jdtls'

" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" unofficial lean plugin
" Plug 'mk12/vim-lean', { 'for': 'lean' }

" Official and (officially annoying) lean plugin
Plug 'Julian/lean.nvim'

" memescript
" Plug 'biomejs/biome'

" soy3; https://xkcd.com/1987/
" Plug 'rafi/neoconf-venom.nvim'

" jupyter nvim
Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'kaarmu/typst.vim'

Plug 'r-bar/ebnf.vim'

" Are you cringe because you are web?
" Or are you web because you are cringe?
" Plug 'jparise/vim-graphql'

" Plug 'tikhomirov/vim-glsl' " teiknislop

Plug 'folke/snacks.nvim'

call plug#end()

filetype plugin on

set completeopt=menu,menuone,noselect


set background=light
set showtabline=1
" " let g:TSContextEnable
colorscheme transparentwolf

" set all .sql files as pgsql
let g:sql_type_default = 'pgsql'
" for adding custom types
" autocmd BufNewFile,BufRead *.extension setf pgsql
" note that this sqlformat is a patched version which enables
" indent_char='\t' for proper indentation
" autocmd FileType sql,pgsql call SqlFormatter()
augroup end
function SqlFormatter()
    set noai
    " set mappings...
    map <localleader>ff  :%!sqlformat --reindent --indent-tabs --keywords upper --identifiers lower -<CR>
    " map \f  :%!sqlformat --reindent --indent-tabs --keywords upper --identifiers lower -<CR>
endfunction

" let g:prod = 'postgres://postgres:GDb70SMwPNOP4rMmOBfuWZZZs@127.0.0.1'
" let g:dbs = {
" \	'dev': 'postgres://postgres:GDb70SMwPNOP4rMmOBfuWZZZs@127.0.0.1'
" \ }

" let g:markdown_fenced_languages = ['c', 'cpp', 'd', 'rust', 'sage', 'sage.python', 'python', 'vim', 'sql', 'julia', 'perl']
let g:markdown_fenced_languages = ['c', 'cpp', 'd', 'rust', 'sage', 'python', 'vim', 'sql', 'julia', 'perl']
let g:vimtex_compiler_method = 'tectonic'
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_automatic = 1
autocmd BufEnter *.tex set conceallevel=2
let g:tex_conceal='abdmg'
let g:rainbow_active = 1
let g:python_recommended_style = 0
let g:rust_recommended_style = 0
let g:d_class_scope_highlight = 1

function! MdMath()
	syn region math start=/\$\$/ end=/\$\$/
	syn match math '\$[^$].\{-}\$'
	hi link math Statement
endfunction

syntax on
set noet
set shiftwidth=4
set tabstop=4
setlocal noet
setlocal shiftwidth=4
setlocal tabstop=4

set number
set relativenumber
set showbreak=+++
set showmatch
set hlsearch
set smartcase
set ignorecase
" set nowrap
set ruler
set undolevels=100
set backspace=indent,eol,start
set path+=**

" spellcheck
map <F5> :setlocal spell! spelllang=en_us<CR>
autocmd FileType markdown setlocal spell
autocmd FileType vimwiki setlocal spell spelllang=en_us

set incsearch
" set copyindent
" set preserveindent

filetype indent on " maybe?

syn	keyword	cTodo BUG CHECK COMBAK DEBUG DEPRECATED FINISH FIX FIXME HACK LOUT MARK NB NOT NOTE NOTES OPTIMIZE README REFACTOR REVIEW SYS_BOOTWIN_INSTALL SYS_RESTART SYS_SHUTDOWN SYS_TODOS TBD TEMP TEST TODO XXX ZZZ

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
nnoremap <leader>q ZQ
nnoremap <leader>z ZZ
" nnoremap <leader>v :norm! dd<CR>
" nnoremap <leader>v :VBox<CR>
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap <leader><tab> :set list!<CR>

set guicursor=i:block

autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown call MdMath()

" vim-commentary
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType julia setlocal commentstring=#\ %s
autocmd FileType sh setlocal commentstring=#\ %s
autocmd FileType rust setlocal commentstring=//\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType circom setlocal commentstring=//\ %s
autocmd FileType cs setlocal commentstring=//\ %s
autocmd FileType nasm setlocal commentstring=;\ %s
autocmd FileType sage.python setlocal commentstring=#\ %s
autocmd FileType gp setlocal commentstring=\\\\\ %s
autocmd FileType nroff setlocal commentstring=\\#\ %s\ \\#
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType yaml setlocal commentstring=#\ %s " fuck yaml
autocmd FileType sql setlocal commentstring=--\ %s
autocmd FileType pqsql setlocal commentstring=--\ %s

" keybind-based compile & run
" autocmd FileType c nnoremap <leader>c :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r')<CR>
" autocmd FileType c nnoremap <leader>C :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' -O3'<CR>
" autocmd FileType c nnoremap <leader>r :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType c nnoremap <leader>m :w <bar> exec 'make'<CR>
autocmd FileType c nnoremap <leader>n :w <bar> exec 'make normal run'<CR>
autocmd FileType nasm nnoremap <leader>m :w <bar> exec 'make'<CR>
autocmd filetype nasm nnoremap <leader>r :w <bar> exec '!./'.shellescape('%:r')<CR>
autocmd filetype python nnoremap <leader>x :w <bar> exec '!python3 '.shellescape('%')<CR>
" autocmd filetype python nnoremap <leader>, :w <bar> exec '!sage -python '.shellescape('%')<CR>
autocmd Filetype tex nnoremap <leader>c :w <bar> VimtexCompile<CR>
autocmd Filetype tex nnoremap <leader>C :w <bar> exec '!zathura '.expand("%:r").'.pdf &'<CR>

" Workman stuffs
let g:workman_normal_workman = 0
let g:workman_insert_workman = 0
let g:workman_normal_qwerty = 0
let g:workman_insert_qwerty = 0

" other shit
set secure
set formatoptions+=r
let &path.="src/include,/usr/include/AL," " maybe think about what i could include here
let &path.="/src/include," " dont know if this is a good idea
autocmd BufRead,BufNewFile *.h,*.c set filetype=c " check if this is working properly
autocmd BufNew,BufRead,BufNewFile *.asm set ft=nasm
autocmd BufNew,BufRead,BufNewFile *.S set ft=gas
autocmd BufNew,BufRead,BufNewFile *.s set ft=gas
let maplocalleader=','

let g:vimtex_compiler_tectonic = {
	\ 'build_dir' : '',
	\ 'options' : [
	\ ],
	\}

let g:vimtex_compiler_latexmk = {
	\ 'build_dir' : '',
	\ 'callback' : 1,
	\ 'continuous' : 0,
	\ 'executable' : 'latexmk',
	\ 'hooks' : [],
	\ 'options' : [
	\	 '-verbose',
	\	 '-file-line-error',
	\ ],
	\}

function TypstWatch()
	vsp
	vertical resize 20
	exec 'terminal ' .. 'typst watch ' .. expand("%:")
	exec "norm \<c-w>h"
endfunc

nnoremap <silent><leader>fc :call TypstWatch()<cr>
nnoremap <silent><leader>fr :silent exec "!zathura --fork " . expand("%:p:r") . ".pdf &"<cr>

" telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
	-- Set up nvim-cmp.
	local cmp = require'cmp'

	cmp.setup({
		snippet = {
			-- REQUIRED - you must specify a snippet engine
			expand = function(args)
				-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
				-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
				require('snippy').expand_snippet(args.body) -- For `snippy` users.
				-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
			end,
		},
		window = {
			-- completion = cmp.config.window.bordered(),
			-- documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			['<C-b>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.abort(),
			['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		}),
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			-- { name = 'vsnip' }, -- For vsnip users.
			-- { name = 'luasnip' }, -- For luasnip users.
			-- { name = 'ultisnips' }, -- For ultisnips users.
			{ name = 'snippy' }, -- For snippy users.
		}, {
			{ name = 'buffer' },
		})
	})

	-- local snippy = require('snippy')
	-- snippy.setup({})

	-- Set configuration for specific filetype.
	cmp.setup.filetype('gitcommit', {
		sources = cmp.config.sources({
			{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
		}, {
			{ name = 'buffer' },
		})
	})

	-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline({ '/', '?' }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = 'buffer' }
		}
	})
	-- cmp.setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })

	-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline(':', {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = 'path' }
		}, {
			{ name = 'cmdline' }
		})
	})

	-- Set up lspconfig.
	-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
	-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.

	require('snippy').setup({
		snippet_dirs = '/home/dagur/.vim/plugged/vim-snippets/snippets,/home/dagur/.config/nvim/snippets',
		mappings = {
			is = {
				['<Tab>'] = 'expand_or_advance'
			}
		}
	})

	local configs = require('lspconfig.configs')
	if not configs.biome then
		configs.biome = {
			default_config = {
				cmd = {'biome', 'lsp-proxy'},
				root_dir = require('lspconfig').util.root_pattern('biome.json'),
				filetypes = { "javascript", "javascriptreact", "json", "jsonc", "typescript", "typescript.tsx", "typescriptreact" }
			}
		}
	end

	-- require'lspconfig'.typst_lsp.setup{}
	require'lspconfig'.gopls.setup{
		settings = {
			staticcheck = true,
			gopls = {
				staticcheck = true,
			},
		},
	}

	require('lspconfig')['clangd'].setup {
		capabilities = capabilities,
		-- cmd = {
			-- "clangd",
			-- "--background-index",
			-- "-j=12",
			-- "--query-driver=/usr/bin/**/clang-*,/bin/clang,/bin/clang++,/usr/bin/gcc,/usr/bin/g++",
			-- "--clang-tidy",
			-- "--clang-tidy-checks=*",
			-- "--all-scopes-completion",
			-- "--cross-file-rename",
			-- "--completion-style=detailed",
			-- "--header-insertion-decorators",
			-- "--header-insertion=iwyu",
			-- "--pch-storage=memory",
		-- },
		fallbackFlags = {
			"-std=c++23",
			-- "-std=c++2c",
			"-Wall", "-Weverything", "-O2", "-Walloca",
			"-Wcast-qual", "-Wconversion", "-Wformat=2",
			"-Wformat-security", "-Wnull-dereference",
			"-Wstack-protector", "-Wvla", "-Warray-bounds",
			"-Warray-bounds-pointer-arithmetic", "-Wassign-enum",
			"-Wbad-function-cast", "-Wconditional-uninitialized",
			"-Wfloat-equal", "-Wformat-type-confusion",
			"-Widiomatic-parentheses", "-Wimplicit-fallthrough",
			"-Wloop-analysis", "-Wpointer-arith",
			"-Wshift-sign-overflow", "-Wshorten-64-to-32",
			"-Wswitch-enum", "-Wtautological-constant-in-range-compare",
			"-Wunreachable-code-aggressive", "-Wthread-safety",
			"-Wthread-safety-beta", "-Wcomma"
		}
	}
	-- require'lspconfig'.asm_lsp.setup {
		-- capabilities = capabilities,
		-- cmd = {"asm-lsp"},
		-- filetypes = {"asm", "s", "S"}
	-- }
	require'treesitter-context'.setup {
		enable = true,
		max_lines = 4,
		min_window_height = 0,
		patterns = {
			default = {
				'class',
				'function',
				'method',
			},
		},
		zindex = 20,
		mode = 'cursor',
		seperator = nil,
	}

	require'nvim-treesitter.configs'.setup {
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "gnn", -- set to `false` to disable one of the mappings
				node_incremental = "grn",
				scope_incremental = "grc",
				node_decremental = "grm",
			},
		},
	}

	require("trouble").setup {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	}
	-- require'lspconfig'.pylsp.setup{
		-- capabilities = capabilities, -- new
	-- }

	-- LMAO based
	-- require'lspconfig'.basedpyright.setup{}
	-- --[[
	require'lspconfig'.pyright.setup{
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "strict"
				}
			}
		}
	}

	-- vim.lsp.enable('pyrefly')
	-- vim.lsp.enable({'pyrefly'})
	-- require'lspconfig'.pyrefly.setup{}

	-- --]]

	-- local coq = require "coq"
	-- require('lspconfig').pylsp.setup(coq.lsp_ensure_capabilities())
	require"fidget".setup{}
	require'lspconfig'.texlab.setup{
		capabilities = capabilities, -- new
	}
	require'lspconfig'.lua_ls.setup {
		capabilities = capabilities,
		settings = {
			Lua = {
				runtime = {
					-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
					version = 'LuaJIT',
				},
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = {'vim'},
				},
				format = {
					enable = true,
					defaultConfig = {
						indent_style = "tab"
					},
				},
				workspace = {
					-- Make the server aware of Neovim runtime files
					library = vim.api.nvim_get_runtime_file("", true),
				},
				-- Do not send telemetry data containing a randomized but unique identifier
				telemetry = {
					enable = false,
				},
			},
		},
	}
	require'lspconfig'.teal_ls.setup{}
	require'lspconfig'.luau_lsp.setup{}
	require'lspconfig'.biome.setup{}

	-- require'lspconfig'.omnisharp.setup {
		-- cmd = { "dotnet", "/home/dagur/cs/omnisharp/Microsoft.CodeAnalysis.ExternalAccess.OmniSharp.dll" },
-- 
		-- -- Enables support for reading code style, naming convention and analyzer
		-- -- settings from .editorconfig.
		-- enable_editorconfig_support = true,
-- 
		-- -- If true, MSBuild project system will only load projects for files that
		-- -- were opened in the editor. This setting is useful for big C# codebases
		-- -- and allows for faster initialization of code navigation features only
		-- -- for projects that are relevant to code that is being edited. With this
		-- -- setting enabled OmniSharp may load fewer projects and may thus display
		-- -- incomplete reference lists for symbols.
		-- enable_ms_build_load_projects_on_demand = false,
-- 
		-- -- Enables support for roslyn analyzers, code fixes and rulesets.
		-- enable_roslyn_analyzers = false,
-- 
		-- -- Specifies whether 'using' directives should be grouped and sorted during
		-- -- document formatting.
		-- organize_imports_on_format = false,
-- 
		-- -- Enables support for showing unimported types and unimported extension
		-- -- methods in completion lists. When committed, the appropriate using
		-- -- directive will be added at the top of the current file. This option can
		-- -- have a negative impact on initial completion responsiveness,
		-- -- particularly for the first few completion sessions after opening a
		-- -- solution.
		-- -- enable_import_completion = false,

		-- -- Specifies whether to include preview versions of the .NET SDK when
		-- -- determining which version to use for project loading.
		-- sdk_include_prereleases = true,

		-- -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
		-- -- true
		-- analyze_open_documents_only = false,
	-- }
	-- require'lspconfig'.csharp_ls.setup{}

	require('lspconfig')['rust_analyzer'].setup {
	 -- capabilities = capabilities
	}
	require('lean').setup{
		lsp = { on_attach = on_attach },
		mappings = true,
		infoview = {
			width = 30,
			height = 10,

		}
	}

	local snacks = require('snacks')
	snacks.setup{
		picker = { enabled = true },
		opts = {
			blame_line = {
				enabled = true,
				width = 0.6,
				height = 0.6,
				border = "rounded",
				title = " Git Blame ",
				title_pos = "center",
				ft = "git",
			}
		},
		-- keys = {
			-- { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
			-- { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
			-- { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
			-- { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
			-- { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
			-- { "<leader>gD", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
			-- { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },

			-- { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
		-- }
	}

	-- because lean.nvim selfishly overwrites this (why tho?)
	vim.opt.expandtab = false
	vim.opt.shiftwidth = 4
	vim.opt.softtabstop = 4
	vim.opt_local.expandtab = false
	vim.opt_local.shiftwidth = 4
	vim.opt_local.softtabstop = 4
	local rt = require'rust-tools'
	rt.setup {
		server = {
			on_attach = function(_, burnr)
			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
		},
	}

	-- FMAL er meme kms hate this I HATE LISP I HATE LISP I HATE LISP
	-- require'lspconfig'.racket_langserver.setup{}
	-- require'lspconfig'.prolog_ls.setup{}
	
	local function quickfix()
		vim.lsp.buf.code_action({
			filter = function(a) return a.isPreferred end,
			apply = true
		})
	end

	vim.keymap.set("n", "<Leader>F", quickfix, {noremap = true})
	vim.keymap.set("n", "<Leader>r", vim.lsp.buf.rename, default_opts)
	vim.keymap.set("n", "<Leader>a", vim.lsp.buf.code_action, default_opts)
	vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, default_opts)
	vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, default_opts)
	vim.keymap.set("n", "<Leader>gr", require('telescope.builtin').lsp_references, default_opts)
	vim.keymap.set("n", "<Leader>ds", require('telescope.builtin').lsp_document_symbols, default_opts)
	vim.keymap.set("n", "<Leader>ws", require('telescope.builtin').lsp_dynamic_workspace_symbols, default_opts)
	vim.keymap.set("n", "<Leader>k", vim.lsp.buf.hover, default_opts)
	vim.keymap.set("n", "<Leader>K", vim.lsp.buf.signature_help, default_opts)

	vim.keymap.set("n", "<leader>gb", snacks.picker.git_branches)
	vim.keymap.set("n", "<leader>gl", snacks.picker.git_log)
	vim.keymap.set("n", "<leader>gL", snacks.picker.git_log_line)
	vim.keymap.set("n", "<leader>gs", snacks.picker.git_status)
	vim.keymap.set("n", "<leader>gS", snacks.picker.git_stash)
	vim.keymap.set("n", "<leader>gD", snacks.picker.git_diff)
	vim.keymap.set("n", "<leader>gf", snacks.picker.git_log_file)
	vim.keymap.set("n", "<leader>gB", snacks.git.blame_line)
EOF

set noexpandtab
