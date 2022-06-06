function lovr.load()
	skybox = lovr.graphics.newTexture('pano1.jpeg')
	-- skybox = lovr.graphics.newTexture('pano2.jpeg')
	-- skybox = lovr.graphics.newTexture('pano3.jpeg')
end

function lovr.draw()
	lovr.graphics.skybox(skybox)
end
