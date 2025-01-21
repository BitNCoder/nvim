

local state = {
	floating = {
		buf = -1,
		win = -1,
	},
}

local function create_floating_window(opts)
	opts = opts or {}
	local width = 10
	local height = 8


	-- create a buffer
	local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true) -- create scratch buffer
	end


	local win_config = {
		relative = "cursor",
		width = width,
		height = height,
		row = 1,
		col = 0,
		focusable = false,
		style = "minimal",
		border = "single"
	}

	local win = vim.api.nvim_open_win(buf, false, win_config) 

	return {buf = buf, win = win}
end


local toggle_win = function()
	if not vim.api.nvim_win_is_valid(state.floating.win) then
		state.floating = create_floating_window({buf = state.floating.buf})
	else
		vim.api.nvim_win_hide(state.floating.win)
	end
end

vim.api.nvim_create_user_command("ToggleFloat", toggle_win, {})
