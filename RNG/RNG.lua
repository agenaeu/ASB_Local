local profile = {};

local sets = {
    idle = {
		Head = 'Hunter\'s Beret',
        Neck = 'Peacock Charm',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Ducal Aketon',
        Hands = 'Hunter\'s Bracers',        
        Ring1 = 'Sniper\'s Ring +1',
        Back = 'Amemet Mantle +1',
		Waist = 'Scout\'s Belt',
        Legs = 'Republic Cuisses',
        Feet = 'Hunter\'s Socks',
	},

	barrage = {
		Head = 'Hunter\'s Beret',
        Neck = 'Peacock Charm',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Hunter\'s Jerkin',
        Hands = 'Hunter\'s Bracers',
		Ring1 = 'Sniper\'s Ring +1',
        Ring2 = 'Scorpion Ring +1',
        Back = {'Amemet Mantle +1', 'Genin Mantle',},
        Waist = 'Scout\'s Belt',
        Legs = 'Republic Cuisses',
        Feet = {'Hunter\'s Socks', 'Leaping Boots',},
		
	},

	tp = {
		Head = 'Hunter\'s Beret',
        Neck = 'Peacock Charm',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Hunter\'s Jerkin',
        Hands = 'Hunter\'s Bracers',
        Ring1 = 'Sniper\'s Ring +1',
		Ring2 = "Scorpion Ring +1",
        Back = 'Amemet Mantle +1',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hunter\'s Socks',
	},

	tp_alt = {
		Head = 'Hunter\'s Beret',
        Neck = 'Peacock Charm',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Hunter\'s Jerkin',
        Hands = 'Hunter\'s Bracers',
        Ring1 = 'Sniper\'s Ring +1',
		Ring2 = "Scorpion Ring +1",
        Back = {'Amemet Mantle +1', 'Genin Mantle',},
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = 'Hunter\'s Socks',
		
	},

	tp_att = {
		Head = 'Hunter\'s Beret',
        Neck = 'Ranger\'s Necklace',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Shikaree Aketon',
        Hands = 'Custom M Gloves',
        Ring1 = "Sniper\'s Ring +1",
		Ring2 = "Rajas Ring",
        Back = 'Amemet Mantle +1',
        Waist = 'Scout\'s Belt',
        Legs = 'Republic Cuisses',
        Feet = 'Hunter\'s Socks', 
		
	},

	tp_att_alt = {
		Head = 'Hunter\'s Beret',
        Neck = 'Ranger\'s Necklace',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Shikaree Aketon',
        Hands = 'Custom M Gloves',
        Ring1 = "Sniper\'s Ring +1",
		Ring2 = "Rajas Ring",
        Back = {'Amemet Mantle +1', 'Genin Mantle',},
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = 'Hunter\'s Socks', 
		
	},
	
	ws = {
		Head = 'Hunter\'s Beret',
        Neck = 'Peacock Charm',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Hunter\'s Jerkin',
        Hands = 'Hunter\'s Bracers',
        Ring1 = 'Sniper\'s Ring +1',
        Ring2 = 'Scorpion Ring +1',
        Back = 'Amemet Mantle +1',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = {'Hunter\'s Socks', 'Leaping Boots',},
		
	},

	ws_alt = {
		Head = 'Hunter\'s Beret',
        Neck = 'Peacock Charm',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Hunter\'s Jerkin',
        Hands = 'Hunter\'s Bracers',
        Ring1 = 'Sniper\'s Ring +1',
        Ring2 = 'Scorpion Ring +1',
        Back = 'Amemet Mantle +1',
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = {'Hunter\'s Socks', 'Leaping Boots',},
		
	},

	ws_att = {
		Head = 'Hunter\'s Beret',
        Neck = 'Ranger\'s Necklace',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Shikaree Aketon',
        Hands = 'Custom M Gloves',
        Ring1 = 'Sniper\'s Ring +1',
		Ring2 = "Rajas Ring",
        Back = 'Amemet Mantle +1',
        Waist = 'Scout\'s Belt',
        Legs = 'Republic Cuisses',
        Feet = {'Hunter\'s Socks', 'Leaping Boots',},
		
	},

	crafting = {
		Body = 'Carpenter\'s Apron',
		Hands = 'Carpenter\'s Gloves',
	},

	firesday = {
		Ring1 = 'Fire Ring',
	},

	Lightningday = {
		Ring1 = 'Lightning Ring',
	},

	haste = {
        Waist = 'Swift Belt',
		Feet = 'Dusk Ledelsens',
		Hands = 'Dusk Gloves',
	},
    meleeAcc = {
        Head = 'Emperor Hairpin',
        Neck = 'Peacock Charm',
        Hands = 'Aiming Bracelets',  
        Ring1 = 'Sniper\'s Ring +1',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Life Belt',
        Feet = 'Dusk Ledelsens',
    },
    
    preshot = {
        Head = 'Hunter\'s Beret',
    },

	scavenge = {
        Feet = 'Hunter\'s Socks',
    },
	
};

local settings = {
	crafting = false,
}; 

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /crafting /lac fwd crafting');
	AshitaCore:GetChatManager():QueueCommand(1, '/macro book 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 9');
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /crafting');
end

profile.HandleCommand = function(args)
	if (args[1] == 'crafting') then
		if (settings.crafting == true) then
			settings.crafting = false;
			gFunc.Message('Crafting Mode: Off');			
		else	
			settings.crafting = true;
			gFunc.Message('Crafting Mode: On');			
		end	
	end
end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
	local environment = gData.GetEnvironment();
	local day = gData.GetEnvironment().Day;
	if (player.Status == 'Engaged') then
		gFunc.EquipSet(sets.meleeAcc);
		if (day == "Firesday" ) then 
			gFunc.EquipSet(sets.firesday);
		elseif (day == "Lightningday") then 
			gFunc.EquipSet(sets.Lightningday);
		end	
	else
		if (settings.crafting == true) then
			gFunc.EquipSet(sets.crafting);
		else 
			gFunc.EquipSet(sets.idle);
		end	
	end
end

profile.HandleAbility = function()
	local action = gData.GetAction();
	if string.match(action.Name, 'Scavenge') then gFunc.EquipSet(sets.scavenge);
	elseif string.match(action.Name, 'Barrage') then
		gFunc.EquipSet(sets.barrage);
	end
	
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	gFunc.EquipSet(sets.haste);
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.preshot);
end

profile.HandleMidshot = function()
    local barrage = gData.GetBuffCount('Barrage');
	local day = gData.GetEnvironment().Day;
	local time = gData.GetEnvironment().Time;
    gFunc.EquipSet(sets.tp_att_alt);
	if (day == "Firesday" ) then 
		gFunc.EquipSet(sets.firesday);
	elseif (day == "Lightningday") then 
		gFunc.EquipSet(sets.Lightningday);
	end
	if (time >= 6) and (time <= 18) then
		gFunc.Equip('Ear2', 'Fenrir\'s Earring');
	end
   --[[  if (gcdisplay.GetCycle('MeleeSet') == 'Acc') then
        gFunc.EquipSet(sets.Midshot_Acc);
    end ]]

    if barrage > 0 then--ensure acc as base if barrage up
        gFunc.EquipSet(sets.barrage);
    end
end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();
	local day = gData.GetEnvironment().Day;
	local time = gData.GetEnvironment().Time;
	if string.match(ws.Name, 'Slug Shot') then
		gFunc.EquipSet(sets.ws_att_alt);
		if (day == "Firesday" ) then 
			gFunc.EquipSet(sets.firesday);
		elseif (day == "Lightningday") then 
			gFunc.EquipSet(sets.Lightningday);
		end	
		if (time >= 6) and (time <= 18) then
			gFunc.Equip('Ear2', 'Fenrir\'s Earring');
		end		
	else
		gFunc.EquipSet(sets.ws);
		if (day == "Firesday" ) then 
			gFunc.EquipSet(sets.firesday);
		elseif (day == "Lightningday") then 
			gFunc.EquipSet(sets.Lightningday);
		end	
		if (time >= 6) and (time <= 18) then
			gFunc.Equip('Ear2', 'Fenrir\'s Earring');
		end
	end
end

return profile;