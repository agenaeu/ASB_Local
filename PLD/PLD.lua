PLD.lua
local profile = {
};

local sets = {
    ['Idle'] = {
        Neck = '',
		Head = '',
        Body = '',
        Ammo = '',
        Ear1 = '',
        Ear2 = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['Moving'] = {
        Body = 'Ducal Aketon',
    },
    ['Swiftblade'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['Savageblade'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['SpiritsWithin'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
	['Vorpalblade'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['SwiftbladeHigh'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['SavagebladeHigh'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['SpiritsWithinHigh'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
	['VorpalbladeHigh'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['SwiftbladeLow'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['SavagebladeLow'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['SpiritsWithinLow'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
	['VorpalbladeLow'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['STRws'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['shieldBash'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['holyCircle'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['rampart'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['chivalry'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['sentinel'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['cover'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['provoke'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['Cure'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
	['O_HAcc'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
	['O_LAcc'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['TP_High'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['TP_Med'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['TP_Low'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['mdt'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['pdt'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['enmity'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['light'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['dark'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['fire'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['ice'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['wind'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['earth'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['lightning'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['water'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['haste'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
    ['fastCast'] = {
        Ammo = '',
        Head = '',
        Neck = '',
        Ear1 = '',
        Ear2 = '',
        Body = '',
        Hands = '',
        Ring1 = '',
        Ring2 = '',
        Back = '',
        Waist = '',
        Legs = '',
        Feet = '',
    },
};
profile.Sets = sets;



local function SetMacros(book, set)
	AshitaCore:GetChatManager():QueueCommand(1, '/macro book '..book);
	AshitaCore:GetChatManager():QueueCommand(1, '/macro set '..set);
end

profile.Packer = {
};




profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /pdt /lac fwd pdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /mdt /lac fwd mdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /low /lac fwd low');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /med /lac fwd med');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /high /lac fwd high');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /oclubh /lac fwd oclubh');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /oclubl /lac fwd oclubl');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /dark /lac fwd dark');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /light /lac fwd light');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /fire /lac fwd fire');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /ice /lac fwd ice');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /wind /lac fwd wind');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /earth /lac fwd earth');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /lightning /lac fwd lightning');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /water /lac fwd water');
end


profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /pdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /mdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /low');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /med');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /high');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /oclubh');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /oclubl');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /dark');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /light');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /fire');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /ice');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /wind');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /earth');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /lightning');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /water');
end

--[[
    HandleCommand listens for the "/lac fwd" command to be called in-game.

    args : arguments you give the fwd command

                         [1]    [2]
    Example: /lac fwd pdt true

    "pdt" is saved into args[1] and "true" is saved into args[2]

    If you had a third or fourth variable, they would be saved into [3] and [4] respectively.
]]--
profile.HandleCommand = function(args)
    -- sets acc to whatever is in args[2]
    if (args[1] == 'low') then
        acc = 'low';
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling low accuracy mode.');
    elseif (args[1] == 'med') then
        acc = 'med';
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling medium accuracy mode.');
    elseif (args[1] == 'high') then
        acc = 'high';
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling high accuracy mode.');
	elseif (args[1] == 'oclubh') then
        acc = 'oclubh';
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling oclub high accuracy mode.');
	elseif (args[1] == 'oclubl') then
        acc = 'oclubl';
		AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling oclub low accuracy mode.');
	elseif (args[1] == 'dark') then
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling dark mode.');
    elseif (args[1] == 'light') then
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling light mode.');
    elseif (args[1] == 'fire') then
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling fire mode.');
    elseif (args[1] == 'ice') then
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling ice mode.');
    elseif (args[1] == 'wind') then
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling wind mode.');
    elseif (args[1] == 'earth') then
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling earth mode.');
    elseif (args[1] == 'lightning') then
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling lightning mode.');
    elseif (args[1] == 'water') then
        AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling water mode.');
    end

    -- Toggles PDT set on and off
    -- If you send 'PDT true' and PDT is already true, it will make it false
    -- When PDT is toggled on, MDT is toggled off
    if (args[1] == 'pdt') then
        if(pdt =='true') then
            pdt = 'false';
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Disabling PDT mode.');
        else
            pdt = 'true';
            mdt = 'false';
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling PDT mode.');
        end
    end

    -- Toggles MDT set on and off
    -- If you send 'MDT true' and MDT is already true, it will make it false
    -- When MDT is toggled on, PDT is toggled off
    if (args[1] == 'mdt') then
        if(mdt =='true') then
            mdt = 'false';
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Disabling MDT mode.');
        else
            mdt = 'true';
            pdt = 'false';
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling MDT mode.');
        end
    end
end

-- HandleDefault is what happens "all" the time. Just imagine that this is being called over and over again
profile.HandleDefault = function()
    -- Initialize default variables
    if (pdt == nil) then
        pdt = 'false';
        mdt = 'false';
        acc = 'low'
    end
    
    -- Get player data
    local player = gData.GetPlayer();
    
        --[[ 
            Checks if you are engaged then equips either a tank (PDT, MDT) or TP(high, med, low) equipment set
            Otherwise, handle Moving/Idle set
        ]]--
        if (player.Status == 'Engaged') then
            if (pdt == 'true') then
                gFunc.EquipSet(sets.pdt);
            elseif (mdt == 'true') then
                gFunc.EquipSet(sets.mdt);
            else
                if (acc == 'high') then
                    gFunc.EquipSet(sets.TP_High);
                elseif (acc == 'med') then
                    gFunc.EquipSet(sets.TP_Med);
                elseif (acc == 'low') then
                    gFunc.EquipSet(sets.TP_Low);
				elseif (acc == 'oclubh') then
                    gFunc.EquipSet(sets.O_HAcc);
				elseif (acc == 'oclubl') then
                    gFunc.EquipSet(sets.O_LAcc);
                end
            end
        else
            if (player.IsMoving == true) then
                gFunc.EquipSet(sets.Moving);
            else
                gFunc.EquipSet(sets.Idle);
            end
        end
        if (pdt == 'true') then
            gFunc.EquipSet(sets.pdt);
        elseif (mdt == 'true') then
            gFunc.EquipSet(sets.mdt);
        end
end

profile.HandleAbility = function()
    -- get action data
    local ability = gData.GetAction();

    -- If either PDT or MDT is set, only use enmity set on Job Abilities
    if (pdt == 'true' or mdt == 'true') then
        gFunc.EquipSet(sets.enmity);
    else
        if(ability.Name == 'Shield Bash') then 
            gFunc.EquipSet(sets.shieldBash);
        elseif (ability.Name == 'Holy Circle') then 
            gFunc.EquipSet(sets.holyCircleCircle);
        elseif (ability.Name == 'Chivalry') then 
            gFunc.EquipSet(sets.chivalry);
        elseif (ability.Name == 'Rampart') then 
            gFunc.EquipSet(sets.rampart);
        elseif (ability.Name == 'Sentinel') then 
            gFunc.EquipSet(sets.sentinel);
        elseif (ability.Name == 'Cover') then 
            gFunc.EquipSet(sets.cover);
        elseif (ability.Name == 'Provoke') then 
            gFunc.EquipSet(sets.provoke);
        else
            --Default Case
        end
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.fastCast);
end


profile.HandleMidcast = function()
    -- get spell data
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.haste);
    -- If either PDT or MDT is set, only use enmity set on Job Abilities
    if (pdt == 'true' or mdt == 'true') then
        gFunc.EquipSet(sets.haste);
        gFunc.EquipSet(sets.enmity);
        if (spell.Skill == 'Ninjutsu') then
            gFunc.EquipSet(sets.haste);
        elseif (spell.Skill == 'Healing') then
            gFunc.EquipSet(sets.haste);
            gFunc.EquipSet(sets.Cure);
        end
    else
        if (spell.Skill == 'Ninjutsu') then
            gFunc.EquipSet(sets.haste);
        elseif (spell.Skill == 'Healing') then
            gFunc.EquipSet(sets.haste);
            gFunc.EquipSet(sets.Cure);
        end
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local player = gData.GetPlayer();
    local ws = gData.GetAction();
    if string.match(ws.Name, 'Savage Blade') then
        if (acc == 'high') then
            gFunc.EquipSet(sets.SavagebladeHigh)
        elseif (acc == 'med') then
            gFunc.EquipSet(sets.Savageblade)
        else
            gFunc.EquipSet(sets.SavagebladeLow)
        end
    elseif string.match(ws.Name, 'Swift Blade') then
        if (acc == 'high') then
            gFunc.EquipSet(sets.SwiftbladeHigh)
        elseif (acc == 'med') then
            gFunc.EquipSet(sets.Swiftblade)
        else
            gFunc.EquipSet(sets.SwiftbladeLow)
        end
    elseif string.match(ws.Name, 'Vorpal Blade') then
        if (acc == 'high') then
            gFunc.EquipSet(sets.VorpalbladeHigh)
        elseif (acc == 'med') then
            gFunc.EquipSet(sets.Vorpalblade)
        else
            gFunc.EquipSet(sets.VorpalbladeLow)
        end
    elseif string.match(ws.Name, 'Spirits Within') then
        if (acc == 'high') then
            gFunc.EquipSet(sets.SpiritsWithinHigh)
        elseif (acc == 'med') then
            gFunc.EquipSet(sets.SpiritsWithin)
        else
            gFunc.EquipSet(sets.SpiritsWithinLow)
        end
    end
end

return profile;