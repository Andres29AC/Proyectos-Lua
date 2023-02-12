--print("Hello World!")
local M = {} --En lua casi todo es una tabla
M.saludar = function()
	--print("Hola desde Neovim amigos!!")
	vim.ui.input({prompt = "Tu nombre: "},function (input)
		--print(" Resultado:Hola " .. input)
		local bufnr = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, {"Hola " .. input})
	end)
end

M.saludar()

return M













