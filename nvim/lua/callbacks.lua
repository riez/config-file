local api = vim.api
local util = vim.lsp.util
local handlers = vim.lsp.handlers or vim.lsp.callbacks
 
local location_callback = function(_, locations, ctx, _)
   if locations == nil or vim.tbl_isempty(locations) then
     print "No references found"
  return
  end
 
  api.nvim_command('tabnew')
 
  if vim.tbl_islist(locations) then
    util.jump_to_location(locations[1])
    if #locations > 1 then
      util.set_qflist(util.locations_to_items(locations))
      api.nvim_command("copen")
    end
  else
    util.jump_to_location(locations)
  end
 
end
 
handlers['textDocument/declaration']    = location_callback
handlers['textDocument/definition']     = location_callback
handlers['textDocument/typeDefinition'] = location_callback
handlers['textDocument/implementation'] = location_callback
