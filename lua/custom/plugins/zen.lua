return {
  "folke/zen-mode.nvim",
  dependencies = {
    "folke/twilight.nvim",
  },
  opts = {
    window = {
      options = {
        number = false,         -- disable number column
        relativenumber = false, -- number = false did not work for me w/o this
      }
    },
  }
}
