return {
	"rmagatti/auto-session",

	config = function()
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      -- pre_save_cmds = {":Neotree close<CR>"},
      -- auto_clean_after_session_restore = true

		})
	end,
}
