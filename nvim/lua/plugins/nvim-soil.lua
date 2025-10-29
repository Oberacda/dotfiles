return {
  'javiorfo/nvim-soil',

  -- Optional for puml syntax highlighting:
  dependencies = { 'javiorfo/nvim-nyctophilia' },

  lazy = true,
  ft = "plantuml",
  opts = {
    -- If you want to change default configurations

    image = {
      darkmode = false,       -- Enable or disable darkmode
      format = "svg",         -- Choose between png or svg
    }
  }
}
