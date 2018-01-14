/// @description Towel Wetness

// If towel is in a drying state decrease wetness otherwise add water to towel
if (towelDrying == true) {
	//If towel isn't completely dry keep drying
	if (towelWetness > 0) towelWetness -= towelDrySpeed;
	if (towelWetness < 0) towelWetness = 0; //This is to catch if less than 0
} else {
	if (towelWetness < towelMaxWetness) towelWetness += towelSoakSpeed;
	if (towelWetness > towelMaxWetness) towelWetness = towelMaxWetness; //This is to catch if greater than max towel wetness
	towelDrying = true;
}

