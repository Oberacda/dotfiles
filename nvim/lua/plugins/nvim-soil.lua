return {
  'javiorfo/nvim-soil',

  -- Optional for puml syntax highlighting:
  dependencies = { 'javiorfo/nvim-nyctophilia' },

  lazy = true,
  ft = "plantuml",
  opts = {
    -- If you want to change default configurations
    actions = {
      redraw = true,
    },


    image = {
      darkmode = true, -- Enable or disable darkmode
      format = "pdf",  -- Choose between png or svg
      execute_to_open = function(img)
        return "zathura " .. img
      end
    }
  }
}
