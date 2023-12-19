local profile = {};
local sets = {
    ['idle'] = {
        Head = 'Legionnaire\'s Cap',
        Body = 'Ducal Aketon',
        Hands = 'Ryl.Ftm. Gloves',
        Ring2 = 'Balance Ring',
        Legs = 'Solid Cuisses',
        Feet = 'Leaping Boots',
    },
    ['tp_acc'] = {
        Head = 'Legionnaire\'s Cap',
        Body = 'Solid Mail',
        Hands = 'Ryl.Ftm. Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Legs = 'Solid Cuisses',
        Feet = 'Leaping Boots',
    },
    ['ws'] = {
        Head = 'Legionnaire\'s Cap',
        Body = 'Solid Mail',
        Hands = 'Ryl.Ftm. Gloves',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
        Legs = 'Solid Cuisses',
        Feet = 'Leaping Boots',
    },
    ['cast'] = {
        Head = 'Legionnaire\'s Cap',
        Body = 'Solid Mail',
        Hands = 'Ryl.Ftm. Gloves',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
        Legs = 'Solid Cuisses',
        Feet = 'Leaping Boots',
    },

};
profile.Sets = sets;

profile.Packer = {
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

	if (player.Status == 'Engaged') then
		gFunc.EquipSet(sets.tp_acc);
	else
		if (settings.crafting == true) then
			gFunc.EquipSet(sets.crafting);
		else 
			gFunc.EquipSet(sets.idle);
		end	
	end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    gFunc.EquipSet(sets.cast);
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local ws = gData.GetAction();
	gFunc.EquipSet(sets.ws);
end

return profile;