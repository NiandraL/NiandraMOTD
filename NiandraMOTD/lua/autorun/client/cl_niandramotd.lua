NiandraMOTD.ButtonsTable = {}
function AddNiandraMOTDButton(name, options)
	
	if not name then 
		name = "Button"
    end

	if not options.colour then
		colour = Color(46, 204, 113)
	end

	NiandraMOTD.ButtonsTable[name] = {
		func = options.func, 
		colour = options.colour
	} 
		
end

NiandraMOTD.ExtrasTable = {}
function AddExtraTab_NiandraMOTD(text, options)
	
	if not text then 
		text = "Key missing!"
    end

	if not options.image then
		image = "materials/niandralades/motd/32/32_user.png"
	end
	
	if not options.width then
		width = 300
	end
	
	if not options.height then
		height = 50
	end
	
	if not options.panel_colour then
		panel_colour = Color(255, 255, 255)
	end
	
	if not options.image_colour then
		image_colour = Color(45, 45, 45, 255)
	end
	
	if not options.space then
		space = 400
	end

	NiandraMOTD.ExtrasTable[text] = {
		image = options.image, 
		width = options.width, 
		height = options.height, 
		panel_colour = options.panel_colour, 
		image_colour = options.image_colour, 
		space = options.space or 400 

	} 
		
end

