local profile = {};
local conquest = gFunc.LoadFile('conquest.lua');
local sets = {
    ['idle'] = {
        Head = 'Luisant Salade',
        Neck = 'Peacock Charm',
        Body = 'Ducal Aketon',
        Hands = 'Luisant Moufles',
        Ring1 = 'Sniper\'s Ring +1',
        Legs = 'Alumine Brayettes',
        Feet = 'Alumine Sollerets',
    },
    ['tp_acc'] = {
        Head = 'Luisant Salade',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        --[[ Ear2 = 'Pilferer\'s Earring', ]]
        Neck = 'Peacock Charm',
        Body = 'Alumine Haubert',
        Hands = 'Luisant Moufles',
        Legs = 'Alumine Brayettes',
        Ring1 = 'Sniper\'s Ring +1',
        Ring2 = 'Sniper\'s Ring',
        Feet = 'Alumine Sollerets',
    },
    ['ws'] = {
        Head = 'Luisant Salade',
        Neck = 'Spike Necklace',
        Hands = 'Custom M Gloves',
        Ring1 = 'Puissance Ring',
        Ring2 = 'Rajas Ring',
        --[[ Feet = 'Leaping Boots', ]]
    },
    ['ra'] = {
        Neck = 'Peacock Charm',
        Ear1 = 'Drone Earring',
        Feet = 'Irn.Msk. Sabatons',
    },
    ['area_control'] = {
        Legs = 'Republic Cuisses',
        Feet = 'Bastokan Greaves',
    },
    ['cast'] = {
        Head = "Legionnaire\'s Cap",
        Body = 'Baron\'s Saio',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring',
        Ring1 = 'Wisdom Ring',
        Ring2 = 'Wisdom Ring',
        Feet = "Custom M Boots",
    },
    ['crafting'] = {
		Body = 'Carpenter\'s Apron',
		Hands = 'Carpenter\'s Gloves',
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
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
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
    --[[ local control = conquest:GetCurrentControl(); --Returns controller of current zone, N/A for zones without conquest. ]]
    --[[ local currentNation = conquest:GetCurrentNation(); --Returns player's current allegiance. ]]
    --[[  local getZoneControl = conquest:GetZoneControl(126); --Returns controller of specified zone id. ]]
    local getInsideControl = conquest:GetInsideControl(); --Returns whether current zone is inside your nation's control.
    --[[ local getOutsideControl = conquest:GetOutsideControl(); --Returns whether current zoen is outside your nation's control. ]]
	if (player.Status == 'Engaged') then
        if (getInsideControl) then
            gFunc.EquipSet(sets.tp_acc);
            gFunc.EquipSet(sets.area_control);
        else 
            gFunc.EquipSet(sets.tp_acc);
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
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local getInsideControl = conquest:GetInsideControl(); --Returns whether current zone is inside your nation's control.
    gFunc.EquipSet(sets.cast);
    if (getInsideControl) then 
        gFunc.Equip('Head', 'Republic Circlet'); 
    end    
        
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
    --[[ local getInsideControl = conquest:GetInsideControl(); --Returns whether current zone is inside your nation's control. ]]
    gFunc.EquipSet(sets.ra);
   --[[  if (getInsideControl) then 
        gFunc.EquipSet(sets.area_control);
    end   ]]  
end

profile.HandleWeaponskill = function()
    local ws = gData.GetAction();
    local getInsideControl = conquest:GetInsideControl(); --Returns whether current zone is inside your nation's control.
	gFunc.EquipSet(sets.ws);
    if (getInsideControl) then 
        gFunc.EquipSet(sets.area_control);
    end   
end

return profile;