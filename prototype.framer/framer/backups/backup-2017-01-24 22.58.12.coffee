scroll = new ScrollComponent
	size: Screen.size
	
scroll.scrollHorizontal = false


therapeut = new Layer
	backgroundColor: "rgba(122,214,255,1)"
	width: 750
	height: screen.height

flow = new FlowComponent
flow.showNext(scroll)

scroll.onClick ->
	flow.showOverlayTop(therapeut)

header = new Layer
		width: 750
		height: 163
		backgroundColor: "rgba(62,140,234,1)"
		shadowSpread: 14
		shadowColor: "rgba(64,64,64,0.17)"
		shadowBlur: 13
		shadowY: 1

magnifying_glass = new Layer
		height: 68
		image: "images/magnifying-glass.png"
		width: 68
		x: 628
		y: 33

magnifying_glass.states.add
	orangeCircle:
		width: 335
		height: 82
		y: 33
		x: 375
		borderRadius: 52
		backgroundColor: "rgba(255,255,255,1)"
		
magnifying_glass.onTap ->
	magnifying_glass.states.next()

	logo = new Layer
		height: 595
		image: "images/logo.png"
		width: 842

for i in [0..10]
	photos = new Layer
		y: 250 * i
		width: 750
		height: 230
		parent: scroll.content
		backgroundColor: "rgba(125,219,255,1)"
		borderWidth: 10
		borderColor: "rgba(42,166,203,1)"
		shadowSpread: 10
		shadowColor: "rgba(49,95,123,0.5)"
		
	profile = new Layer
		parent: photos
		x: 48
		y: 33
		width: 131
		height: 131
		backgroundColor: "rgba(230,230,230,1)"
		borderWidth: 5
		borderColor: "rgba(255,255,255,1)"
		borderRadius: 100
		shadowSpread: 1
		shadowColor: "rgba(0,0,0,0.25)"
		shadowY: 5
		shadowBlur: 20
	online = new Layer
		parent: photos
		x: 654
		y: 93
		width: 42
		height: 42
		borderRadius: 100
		backgroundColor: "#28affa"
	process = new Layer
		parent: photos	
		width: 204
		height: 35
		x: 396
		y: 99
		borderWidth: 1
		borderColor: "rgba(134,134,134,0.5)"
		borderRadius: 63
		backgroundColor: "rgba(237,254,249,1)" 
		break if 



