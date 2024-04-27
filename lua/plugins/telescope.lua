return {
    {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n','<C-e>', builtin.find_files,{})
      -- TODO Change to <C-S-f> to match VSCode
      vim.keymap.set('n','<C-f>', builtin.live_grep,{})
      --vim.keymap.set('n','<cs-f>', builtin.live_grep,{})
      vim.keymap.set('n', '<leader>sb', builtin.buffers, {noremap = true})
    end
    },
    {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
      end
    }
	}
