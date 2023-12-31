return {
	"akinsho/bufferline.nvim",
	version = "*",
	config = function()
		vim.keymap.set("n", "<leader>bs", ":BufferLineSortByExtension<CR>")
		vim.keymap.set("n", "<leader>bc", ":BufferLineCloseOthers<CR>")
		vim.keymap.set("n", "<leader>b1", "<Cmd>BufferLineGoToBuffer 1<CR>")
		vim.keymap.set("n", "<leader>b2", "<Cmd>BufferLineGoToBuffer 2<CR>")
		vim.keymap.set("n", "<leader>b3", "<Cmd>BufferLineGoToBuffer 3<CR>")
		vim.keymap.set("n", "<leader>b4", "<Cmd>BufferLineGoToBuffer 4<CR>")
		vim.keymap.set("n", "<leader>b5", "<Cmd>BufferLineGoToBuffer 5<CR>")
		vim.keymap.set("n", "<leader>b6", "<Cmd>BufferLineGoToBuffer 6<CR>")
		vim.keymap.set("n", "<leader>b7", "<Cmd>BufferLineGoToBuffer 7<CR>")
		vim.keymap.set("n", "<leader>b8", "<Cmd>BufferLineGoToBuffer 8<CR>")
		vim.keymap.set("n", "<leader>b9", "<Cmd>BufferLineGoToBuffer 9<CR>")
		require("bufferline").setup({
			options = {
				separator_style = { "👑", "👑" },
				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or ""
					return " " .. icon .. count
				end,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true, -- use a "true" to enable the default, or set your own character
					},
				},
			},
		})
	end,
}
