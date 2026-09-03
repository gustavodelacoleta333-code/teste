Written by Wardragon3399 initial purpose was Commfy summer game jam 2026 game name Summer of Sandcasstles 

This Plugin is use for spawm items in tilemap(square)
to use it you just need to install plugin in and enable it in project settings.

Once enabel step is like 
1. Add SpwanManager Node in scene you can add like normal Node and can search in search bar
2. one you add it in inspector you can see Tilemap layer you need to add any tliemaplayer node from scene even emetpy also work just be sure of ordering of layers
3. Spawn Groprs you need to array of it that contain 
	A. Size noramlly if your items not spwan like set or class example, battle items, weapons else just use 1
	B. After that click on dropdown menu icon between folder and delete icon you can see SpawnGroup add it
	C. Once it Added You can see empty become SpwanGroup click on name you see whloe new set of option
		a. Group Name : name of Group give whatever you want
		b. Cells : Array of vecotrs mean array of cells numbers you want spawn and cordinate or location of cell where item spawn
					example : if you want spwan on 10 location cell size is 10 
								after that you get like o and x and y  you need enter X and Y value of cell location 
									exaple if cell location (15,-1) X = 15 and Y -1 
									you get cell location if you sekect tilemap layer and move your arrow arround 2D scene view in bottom left of view you see this value
	D. Next is Spawn Count this is number of cells of selected cell you want to spawn
				example : from 10 cells location you want like only 5 random cell spwan item input value will be 5
				for who want to spwan all cells of above selected cells keep this Spwan Count value same as Cells Size like if cells size is 10 here also 10
	F: Item Array Contain size mean total number of items in list you want 
				exapmle : 7 items in group than size is 7
		a. one you add size you can see option for empty list of array same like above from dropdown select SpawanItem
		b. same one slected it click on it to open futher options have 2 option scene and weight
		C. scene for select you tscn or scene file of items of your projects you want to spwan(seprate scene for each items so like list have 7 item fill each empty with scene)
				example : 0 fill scene of item 1, 1 fill scene of item 2 
		d. weight for drop rates or spawn rate of item possiblity percentage of spwan if you keep 0 it divide euqale all items in list.
		
That's is onec you run scene item will spawn at location.

note :	items automaticlly spawn again once scene is load so every reload respwan it.
		you can manually handle it via spwan_all() function call when want to spawn and stop auto spawn by commet or stop it from call it form _ready() function
		both you find in runtime/SpawnManager.gd script not confuse with directely one SpwanManager folder
		
		 			  		
