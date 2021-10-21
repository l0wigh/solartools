fun! SolarUpdate()
	lua for k in pairs(package.loaded) do if k:match('^SolarTools') then package.loaded[k] = nil end end
	lua require("SolarTools").update()
endfun

augroup SolarTools
	autocmd!
augroup END
