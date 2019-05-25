if (mySpawn == -1 && canSpawn){
	
	var newSpawn = instance_create_layer(x,y,"Spawn",spawnObject);
	mySpawn = newSpawn.id;
	canSpawn = false;
} else{
	if (!instance_exists(mySpawn)){
		
		mySpawn = -1;
	}
}