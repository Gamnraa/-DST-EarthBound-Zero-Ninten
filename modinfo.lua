-- This information tells other players more about the mod
name = "EarthBound Zero: Ninten"
description = "Adds Ninten from EarthBound Beginnings to the game."
author = "Lucas & Claus"
version = "0.8.0"

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = "/files/file/950-extended-sample-character/"

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {
"character",
}

configuration_options = {

	{
        name = "GRAMNINTEN_HEALTH",
		label = "Ninten's Health",
        options =
        {

			{description = "100", data = 100},
			{description = "110", data = 100},
            {description = "120", data = 120},
			{description = "130", data = 130},
            {description = "140", data = 150},
            {description = "150", data = 150},
			{description = "160", data = 160},
            {description = "170", data = 170},
			{description = "180 (default)", data = 180},
			{description = "190", data = 190},
			{description = "200", data = 200},
			{description = "220", data = 220},
			{description = "240", data = 240},
		},
        default = 180,	
	},
	{
		name = "GRAMNINTEN_HUNGER",
		label = "Ninten's Hunger",
		options = 
		{
			{description = "80", data = 80},
			{description = "90", data = 90},
			{description = "100", data = 100},
			{description = "110", data = 110},
			{description = "120 (default)", data = 120},
			{description = "130", data = 130},
			{description = "140", data = 140},
			{description = "150", data = 150},
		},
		default = 120,
	},
	{
		name = "GRAMNINTEN_SANITY",
		label = "Ninten's Sanity",
		options = 
		{
			{description = "150", data = 150},
			{description = "160", data = 160},
			{description = "170", data = 170},
			{description = "180", data = 180},
			{description = "190", data = 190},
			{description = "200 (default)", data = 200},
			{description = "210", data = 210},
			{description = "220", data = 220},
			{description = "230", data = 230},
			{description = "240", data = 240},
			{description = "250", data = 250},
		},
		default = 200,
	},
	{
		name = "GRAMNINTEN_4D_SLIP_SANITY",
		label = "4D Slip Cost",
		hover = "How much sanity it costs Ninten to use 4D Slip and 4D Slip Omega.",
		options = 
		{
			{description = "None", data = 0},
			{description = "5", data = 5},
			{description = "10", data = 10},
			{description = "15 (default)", data = 15},
			{description = "20", data = 20},
			{description = "25", data = 25},
			{description = "30", data = 30},
		},
		default = 15,
	},
	{
		name = "GRAMNINTEN_PSI_SHIELD_SANITY",
		label = "PSI Shield Cost",
		hover = "How much sanity it costs Ninten to use PSI Shield and Powershield.",
		options = 
		{
			{description = "None", data = 0},
			{description = "10", data = 10},
			{description = "20", data = 20},
			{description = "30", data = 30},
			{description = "40 (default)", data = 40},
			{description = "50", data = 50},
		},
		default = 40,
	},
	{
		name = "GRAMNINTEN_ASTHMA",
		label = "Toggle Ninten's Asthma",
		hover = "Toggle if Ninten will suffer from asthma.",
		options =
		{
			--Yes the boolean logic is backwards it made more sense from a coding perspective
			--Don't worry about it
			{description = "On (default)", data = false},
			{description = "Off", data = true}
		},
		default = false,
	},
	{
		name = "GRAMNINTEN_ASTHMA_OVERLAY",
		label = "Toggle Asthma Overlay",
		hover = "Toggle if Ninten's risk of an asthma attack will display",
		options =
		{
			{description = "On (default)", data = true},
			{description = "Off", data = false}
		},
		default = false,
	}
			
}
