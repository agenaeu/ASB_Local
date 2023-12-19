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
        Back = {'Amemet Mantle +1', 'Genin Mantle',},
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = {'Hunter\'s Socks', 'Leaping Boots',},
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
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = {'Hunter\'s Socks', 'Leaping Boots',},
		Ammo = "Silver Bullet",
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
        Back = {'Amemet Mantle +1', 'Genin Mantle',},
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = 'Hunter\'s Socks',
		Ammo = 'Silver Bullet',
	},

	tp_att = {
		Head = 'Hunter\'s Beret',
        Neck = 'Ranger\'s Necklace',
        Ear1 = 'Drone Earring',
        Ear2 = 'Genin Earring',
        Body = 'Shikaree Aketon',
        Hands = 'Custom M Gloves',
        Ring1 = 'Sniper\'s Ring +1',
		Ring2 = "Rajas Ring",
        Back = {'Amemet Mantle +1', 'Genin Mantle',},
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = 'Hunter\'s Socks', 
		Ammo = 'Silver Bullet',
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
        Back = {'Amemet Mantle +1', 'Genin Mantle',},
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = {'Hunter\'s Socks', 'Leaping Boots',},
		Ammo = 'Silver Bullet',
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
        Back = {'Amemet Mantle +1', 'Genin Mantle',},
        Waist = 'R.K. Belt +2',
        Legs = 'Republic Cuisses',
        Feet = {'Hunter\'s Socks', 'Leaping Boots',},
		Ammo = 'Silver Bullet',
	},

	crafting = {
		Body = 'Carpenter\'s Apron',
		Hands = 'Carpenter\'s Gloves',
	},

	haste = {
        Waist = 'Swift Belt',
	},
    meleeAcc = {
        Ammo = 'Silver Bullet',
        Head = 'Emperor Hairpin',
        Neck = 'Peacock Charm',
        Hands = 'Custom M Gloves',  
        Ring1 = 'Sniper\'s Ring +1',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Life Belt',
        Feet = 'Leaping Boots',
    },
    
    preshot = {
        Head = 'Hunter\'s Beret',
    },

	scavenge = {
        Feet = 'Hunter\'s Socks',
    },

	--[[ tp_haste = {		
		Head = 'Panther mask +1',
		Body = 'Kirin\'s Osode',
		Hands = 'Bandomusha Kote',
        Legs = 'Byakko\'s Haidate',
		Feet = 'Dune boots',
		Neck = 'Faith Torque',
        Waist = 'Black Belt',
		Ear1 = 'Brutal Earring',
		Ear2 = 'Wyvern Earring',
		Ring1 = 'Flame Ring',
		Ring2 = 'Rajas Ring',
		Back = 'Forager\'s Mantle'
	}, ]]
	
	--[[ tp_crit = {
		Head = 'Panther mask +1',
		Body = 'Kirin\'s Osode',
		Hands = 'Bandomusha Kote',
        Legs = 'Byakko\'s Haidate',
		Feet = 'Sarutobi Kyahan',
		Neck = 'Faith Torque',
        Waist = 'Black Belt',
		Ear1 = 'Brutal Earring',
		Ear2 = 'Pilferer\'s Earring',
		Ring1 = 'Flame Ring',
		Ring2 = 'Rajas Ring',
		Back = 'Forager\'s Mantle'
	}, ]]
	
};

local settings = {
	crafting = false,
}; 

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /crafting /lac fwd crafting');
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

	if (player.Status == 'Engaged') then
		gFunc.EquipSet(sets.meleeAcc);
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
    gFunc.EquipSet(sets.tp);

   --[[  if (gcdisplay.GetCycle('MeleeSet') == 'Acc') then
        gFunc.EquipSet(sets.Midshot_Acc);
    end ]]

    if barrage > 0 then--ensure acc as base if barrage up
        gFunc.EquipSet(sets.barrage);
    end
end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();
	if string.match(ws.Name, 'Slug Shot') then
		gFunc.EquipSet(sets.ws);		
	else
		gFunc.EquipSet(sets.ws);
	end
end

return profile;