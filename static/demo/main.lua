function lovr.load()
	skybox0 = lovr.graphics.newTexture('pano1.jpeg', { mipmaps = false })
	skybox1 = lovr.graphics.newTexture('pano2.jpeg', { mipmaps = false })
	skybox2 = lovr.graphics.newTexture('pano3.jpeg', { mipmaps = false })

	material = lovr.graphics.newMaterial(skybox1)
	
end

function lovr.draw()
	local angle = lovr.timer.getTime()
	lovr.graphics.sphere(material, 0, 1.7, -1, .1, angle)
	lovr.graphics.skybox(skybox0)
end
