local status, headwind  = pcall(require, "headwind")
if (not status) then return end

function Set (list)
  local set = {}
  for _, l in ipairs(list) do set[l] = true end
  return set
end

currentFileType = vim.api.nvim_buf_get_option(bufnr, "filetype")
allowedFileTypes = Set{'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'html', 'css', 'tsx', 'jsx'}

if allowedFileTypes[currentFileType] then
  print(currentFileType)
  headwind.setup({})
end
