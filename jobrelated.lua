-- People often copy jobs. When they do, the GM table does not exist anymore.
-- This line makes the job code work both inside and outside of gamemode files.
-- You should not copy this line into your code.
local GAMEMODE = GAMEMODE or GM
--[[--------------------------------------------------------
Default teams. Please do not edit this file. Please use the darkrpmod addon instead.
--------------------------------------------------------]]
TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_POLICE = DarkRP.createJob("Civil Protection", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
    description = [[The protector of every citizen that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
    command = "cp",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_GANG = DarkRP.createJob("Gangster", {
    color = Color(75, 75, 75, 255),
    model = {
        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl",
        "models/player/Group03/Female_03.mdl",
        "models/player/Group03/Female_04.mdl",
        "models/player/Group03/Female_06.mdl",
        "models/player/group03/male_01.mdl",
        "models/player/Group03/Male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/Male_04.mdl",
        "models/player/Group03/Male_05.mdl",
        "models/player/Group03/Male_06.mdl",
        "models/player/Group03/Male_07.mdl",
        "models/player/Group03/Male_08.mdl",
        "models/player/Group03/Male_09.mdl"},
    description = [[The lowest person of crime.
        A gangster generally works for the Mobboss who runs the crime family.
        The Mob boss sets your agenda and you follow it or you might be punished.]],
    weapons = {},
    command = "gangster",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_MOB = DarkRP.createJob("Mob boss", {
    color = Color(25, 25, 25, 255),
    model = "models/player/gman_high.mdl",
    description = [[The Mob boss is the boss of the criminals in the city.
        With his power he coordinates the gangsters and forms an efficient crime organization.
        He has the ability to break into houses by using a lockpick.
        The Mob boss posesses the ability to unarrest you.]],
    weapons = {"lockpick", "unarrest_stick"},
    command = "mobboss",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.34,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = "models/player/monk.mdl",
    description = [[A Gun Dealer is the only person who can sell guns to other people.
        Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "gundealer",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(47, 79, 79, 255),
    model = {
	    "models/player/Group03m/male_01.mdl",
		"models/player/Group03m/male_07.mdl",
		"models/player/Group03m/male_09.mdl",
		"models/player/Group03m/female_02.mdl",
		"models/player/Group03m/female_06.mdl",
		"models/player/Group03m/female_04.mdl",
		"models/player/Group03m/female_03.mdl"},
    description = [[With your medical knowledge you work to restore players to full health.
        Without a medic, people cannot be healed.
        Left click with the Medical Kit to heal other players.
        Right click with the Medical Kit to heal yourself.]],
    weapons = {"med_kit"},
    command = "medic",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {  --Input a team and the name to display
    color = Color(150, 20, 20, 255), -- Change the color of the UI of the job
    model = "models/player/breen.mdl",  --Change the playermodel
    description = [[The Mayor of the city creates laws to govern the city.
    If you are the mayor you may create and accept warrants.
    Type /wanted <name>  to warrant a player.
    Type /jailpos to set the Jail Position.
    Type /lockdown initiate a lockdown of the city.
    Everyone must be inside during a lockdown.
    The cops patrol the area.
    /unlockdown to end a lockdown]],  -- A little description for the job (Not really necessary)
    weapons = {}, -- Weapons for the job
    command = "mayor", -- Command to change between jobs like: /mayor or /citizen
    max = 1, -- Amount of people that can be this job
    salary = GAMEMODE.Config.normalsalary * 1.89, -- Probably the amount of the salary * the amount of salary. You can change it also to: "salary = *Enter amount of money here*"
    admin = 0, -- If the job can be accesible by everyone or only admins
    vote = true, -- Create a vote to become the job
    hasLicense = false, -- Probably something todo with gun license.
    mayor = true, -- No clue what this is
    category = "Civil Protection", --Displayed in different category's for example, police and mayor are in the category "Civil Protection"
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(80, 45, 0, 255),
    model = "models/player/corpse1.mdl",
    description = [[The lowest member of society. Everybody laughs at you.
        You have no home.
        Beg for your food and money
        Sing for everyone who passes to get money
        Make your own wooden home somewhere in a corner or outside someone else's door]],
    weapons = {"weapon_bugbait"},
    command = "hobo",
    max = 5,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Citizens",
})

TEAM_JUNK = DarkRP.createJob("Junkie", {
    color = Color(209, 198, 22, 255),
    model = {"models/player/soldier_stripped.mdl"},
    description = [[You fill yourself with the most disgusting things. You should be ashamed.]],
    weapons = {},
    command = "junkie",
    max = 9,
    salary = 5,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_THIEF = DarkRP.createJob("Thief", {
    color = Color(0, 0, 0, 255),
	model = {"models/player/phoenix.mdl"},
	description = [[You steal things from the rich. Easy, right?]],
	weapons = {},
	command = "thief",
	max = 5,
	salary = 30,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
})

TEAM_HOOKER = DarkRP.createJob("Hooker", {
    color = Color(0, 0, 0, 255),
	model = {"models/player/mossman_arctic.mdl"},
	description = [[You steal things from the rich. Easy, right?]],
	weapons = {},
	command = "hooker",
	max = 3,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
})

TEAM_HEAVY = DarkRP.createJob("Heavy Explosives Dealer (VIP+)", {
    color = Color(0, 0, 0, 255),
	model = {"models/player/mossman.mdl"},
	description = [[You're a filthy scum and snitch everyone you see doing illegal things.]],
    weapons = {},
    command = "heavy",
    max = 3,
    salary = 15,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Citizens",
    NeedToChangeFrom = Citizens,
	    customCheck = function(ply) return CLIENT or
         table.HasValue({"VIP+", "superadmin", "owner"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "This job is only for VIP+ or higher!",
})

TEAM_SNITCH = DarkRP.createJob("Snitch", {
    color = Color(0, 0, 0, 255),
	model = {"models/player/mossman.mdl"},
	description = [[You're a filthy scum and snitch everyone you see doing illegal things.]],
	weapons = {},
	command = "snitch",
	max = 6,
	salary = 25,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
})

TEAM_AGENT = DarkRP.createJob("D.E.A Agent", {
    color = Color(0, 0, 249, 255),
	model = {"models/player/police.mdl"},
	description = [[]],
	weapons = {},
	command = "agent",
	max = 5,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Officials",
})

TEAM_DIRECTOR = DarkRP.createJob("D.E.A Director", {
    color = Color(0, 0, 249, 255),
	model = {"models/player/police.mdl"},
	description = [[]],
	weapons = {},
	command = "director",
	max = 5,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Officials",
})

TEAM_CHIEF = DarkRP.createJob("D.E.A Chief", {
    color = Color(0, 0, 249, 255),
	model = {"models/player/police.mdl"},
	description = [[]],
	weapons = {},
	command = "chief",
	max = 5,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Officials",
})

TEAM_CORRUPT = DarkRP.createJob("Corrupt Police Officer (VIP+)", {
    color = Color(0, 0, 0, 255),
	model = {"models/player/mossman.mdl"},
	description = [[]],
    weapons = {},
    command = "corrupt",
    max = 3,
    salary = 15,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Officials",
    NeedToChangeFrom = Citizens,
	    customCheck = function(ply) return CLIENT or
         table.HasValue({"VIP+", "superadmin", "owner"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "This job is only for VIP+ or higher!",
})

TEAM_POLICE = DarkRP.createJob("Police Officer", {
    color = Color(0, 0, 249, 255),
	model = {"models/player/police.mdl"},
	description = [[]],
	weapons = {},
	command = "police",
	max = 5,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Officials",
})

TEAM_POLICE = DarkRP.createJob("Police Chief", {
    color = Color(0, 0, 249, 255),
	model = {"models/player/police.mdl"},
	description = [[]],
	weapons = {"weapon_glock2"},
	command = "pc",
	max = 5,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	    ammo = {
        ["pistol"] = 60,
    },
	category = "Officials",
})

TEAM_DETECTIVE = DarkRP.createJob("Detective", {
    color = Color(0, 0, 249, 255),
	model = {"models/player/police.mdl"},
	description = [[]],
	weapons = {"weapon_glock2"},
	command = "detective",
	max = 5,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	    ammo = {
        ["pistol"] = 60,
    },
	category = "Officials",
})

TEAM_METH = DarkRP.createJob("Meth Cook Teacher", {
    color = Color(209, 199, 9, 255),
	model = {"models/player/soldier_stripped.mdl"},
	description = [[]],
	weapons = {""},
	command = "teacher",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Meth Cooks",
})

TEAM_METH = DarkRP.createJob("Meth Cook", {
    color = Color(209, 199, 9, 255),
	model = {"models/player/soldier_stripped.mdl"},
	description = [[]],
	weapons = {""},
	command = "meth",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Meth Cooks",
})

TEAM_METH = DarkRP.createJob("Advanced Meth Cook (VIP+) ", {
    color = Color(209, 199, 9, 255),
	model = {"models/player/soldier_stripped.mdl"},
	description = [[]],
	weapons = {""},
	command = "advanced",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Meth Cooks",
		    customCheck = function(ply) return CLIENT or
         table.HasValue({"VIP+", "superadmin", "owner"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "This job is only for VIP+ or higher!",
})

TEAM_PRODUCER = DarkRP.createJob("Chemical Producer (VIP+)", {
    color = Color(209, 199, 9, 255),
	model = {"models/player/soldier_stripped.mdl"},
	description = [[]],
	weapons = {""},
	command = "producer",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Meth Cooks",
		    customCheck = function(ply) return CLIENT or
         table.HasValue({"VIP+", "superadmin", "owner"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "This job is only for VIP+ or higher!",
})

TEAM_KING = DarkRP.createJob("King Pin", {
    color = Color(209, 199, 9, 255),
	model = {"models/player/soldier_stripped.mdl"},
	description = [[]],
	weapons = {""},
	command = "king",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Meth Cooks",
})

TEAM_DRUG = DarkRP.createJob("Drug Dealer", {
    color = Color(25, 25, 25, 255),
	model = {"models/player/soldier_stripped.mdl"},
	description = [[]],
	weapons = {""},
	command = "drugdealer",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Gangsters",
})

TEAM_TUSTAV = DarkRP.createJob("Tustav Cartel Member", {
    color = Color(255, 104, 0, 255),
	model = {"models/player/gman_high.mdl"},
	description = [[]],
	weapons = {""},
	command = "tustav",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Mexican Cartel",
})

TEAM_TUSTAV = DarkRP.createJob("Tustav Cartel Medic", {
    color = Color(255, 104, 0, 255),
	model = {"models/player/gman_high.mdl"},
	description = [[]],
	weapons = {""},
	command = "tustavmedic",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Mexican Cartel",
})

TEAM_TUSTAVHITMAN = DarkRP.createJob("Tustav Cartel Hitman", {
    color = Color(255, 104, 0, 255),
	model = {"models/player/gman_high.mdl"},
	description = [[]],
	weapons = {""},
	command = "tustavhitman",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Mexican Cartel",
})

TEAM_TUSTAV = DarkRP.createJob("Tustav Cartel Thief", {
    color = Color(255, 104, 0, 255),
	model = {"models/player/gman_high.mdl"},
	description = [[]],
	weapons = {""},
	command = "tustavthief",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Mexican Cartel",
})

TEAM_TUSTAV = DarkRP.createJob("Tustav Cartel Leader", {
    color = Color(255, 104, 0, 255),
	model = {"models/player/gman_high.mdl"},
	description = [[]],
	weapons = {""},
	command = "tustavleader",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Mexican Cartel",
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    TEAM_COOK = DarkRP.createJob("Cook", {
        color = Color(209, 199, 9, 255),
        model = "models/player/mossman.mdl",
        description = [[As a cook, it is your responsibility to feed the other members of your city.
            You can spawn a microwave and sell the food you make:
            /buymicrowave]],
        weapons = {},
        command = "cook",
        max = 2,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true
    })
end

-- Compatibility for when default teams are disabled
TEAM_CITIZEN = TEAM_CITIZEN  or -1
TEAM_POLICE  = TEAM_POLICE   or -1
TEAM_GANG    = TEAM_GANG     or -1
TEAM_MOB     = TEAM_MOB      or -1
TEAM_GUN     = TEAM_GUN      or -1
TEAM_MEDIC   = TEAM_MEDIC    or -1
TEAM_CHIEF   = TEAM_CHIEF    or -1
TEAM_MAYOR   = TEAM_MAYOR    or -1
TEAM_HOBO    = TEAM_HOBO     or -1
TEAM_COOK    = TEAM_COOK     or -1

-- Door groups
AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR, TEAM_AGENT, TEAM_CORRUPT, TEAM_DETECTIVE, TEAM_CHIEF)
AddDoorGroup("Gundealer only", TEAM_GUN)


-- Agendas
DarkRP.createAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
DarkRP.createAgenda("Police agenda", {TEAM_MAYOR, TEAM_CHIEF}, {TEAM_POLICE})

-- Group chats
DarkRP.createGroupChat(function(ply) return ply:isCP() end)
DarkRP.createGroupChat(TEAM_MOB, TEAM_GANG)
DarkRP.createGroupChat(function(listener, ply) return not ply or ply:Team() == listener:Team() end)

-- Initial team when first spawning
GAMEMODE.DefaultTeam = TEAM_CITIZEN

-- Teams that belong to Civil Protection
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}

-- Hitman team
DarkRP.addHitmanTeam(TEAM_MOB)
DarkRP.addHitmanTeam(TEAM_TUSTAVHITMAN)

-- Demote groups
DarkRP.createDemoteGroup("Cops", {TEAM_POLICE, TEAM_CHIEF})
DarkRP.createDemoteGroup("Gangsters", {TEAM_GANG, TEAM_MOB})

-- Default categories
DarkRP.createCategory{
    name = "Citizens",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Civil Protection",
    categorises = "jobs",
    startExpanded = true,
    color = Color(25, 25, 170, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Gangsters",
    categorises = "jobs",
    startExpanded = true,
    color = Color(75, 75, 75, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Officials",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 0, 249, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Meth Cooks",
    categorises = "jobs",
    startExpanded = true,
    color = Color(209, 199, 9, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Mexican Cartel",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 104, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}


