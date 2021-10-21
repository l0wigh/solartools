local notification = require("notify")

local function update()
	os.execute("rm ~/.config/lvim/_before_update_config.lua")
	os.execute("rm ~/.config/lvim/lua/_before_update_solarboard.lua")
	os.execute("mv ~/.config/lvim/config.lua ~/.config/lvim/_before_update_config.lua")
	os.execute("mv ~/.config/lvim/lua/solarboard.lua ~/.config/lvim/lua/_before_update_solarboard.lua")
	os.execute("cd ~/.config/lvim/ && { curl -O https://raw.githubusercontent.com/l0wigh/solarvim/master/config.lua ; cd ~; }")
	os.execute("cd ~/.config/lvim/lua/ && { curl -O https://raw.githubusercontent.com/l0wigh/solarvim/master/solarboard.lua; cd ~; }")
	vim.cmd("e ~/.config/lvim/config.lua")
	vim.cmd("w")
	vim.cmd("BufferClose")
	notification("Update finished, you might need to restart to see changes", "Information", {title = "SolarVim"})
end


return {
	update = update,
}
