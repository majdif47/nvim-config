return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				--install via mason
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.biome,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.google_java_format,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.diagnostics.flake8,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.diagnostics.checkstyle.with({
					extra_args = { "-c", "/google_checks.xml" },
				}),
				null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.diagnostics.markuplint,
				null_ls.builtins.code_actions.refactoring,
			},
		})
		vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, {})
	end,
}
