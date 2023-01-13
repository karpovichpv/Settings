return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
  
  -- набор Lua функций, используется как зависимость в большинстве
  -- плагинов, где есть работа с асинхронщиной
  use 'nvim-lua/plenary.nvim'
    
  -- конфиги для LSP серверов, нужен для простой настройки и
  -- возможности добавления новых серверов
  use 'neovim/nvim-lspconfig'

  -- зависимости для движка автодополнения
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- движок автодополнения для LSP
  use 'hrsh7th/nvim-cmp'

  use 'nvim-tree/nvim-tree.lua'

  use 'preservim/vim-pencil'
  use 'preservim/vim-markdown'
  use 'junegunn/goyo.vim'

  use {
       'nvim-telescope/telescope.nvim', tag = '0.1.0',
       requires = { {'nvim-lua/plenary.nvim'} }
      }

end)
