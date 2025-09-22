return{ {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
},
  {
  'saghen/blink.cmp',
   dependencies = { 'rafamadriz/friendly-snippets' },

    version = '1.*',
  opts = {
       keymap = {preset = 'super-tab'},
   


    appearance = {
            nerd_font_variant = 'mono'
    },
    completion = { documentation = { auto_show = false } },

   
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

       fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" },
},}
