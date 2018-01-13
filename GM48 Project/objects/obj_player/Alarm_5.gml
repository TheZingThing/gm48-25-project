/// @description Towel Wetness

// If towel is in a drying state decrease wetness otherwise add water to towel
if (towelDrying == true) {
	//If towel isn't completely dry keep drying
	if (towelWetness > 0) towelWetness -= towelDrySpeed;
} else {
	if (towelWetness < towelMaxWetness) towelWetness += towelSoakSpeed;
		towelDrying = true;
}

