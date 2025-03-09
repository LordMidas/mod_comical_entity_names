local info = {
	ID = "mod_comical_entity_names",
	Name = "Comical Entity Names",
	Version = "1.0.0"
};

local mh = ::Hooks.register(info.ID, info.Version, info.Name);
mh.require("mod_msu");

local mod;
mh.queue(">mod_msu", function() {
	mod = ::MSU.Class.Mod(info.ID, info.Version, info.Name);
	mod.Registry.addModSource(::MSU.System.Registry.ModSourceDomain.GitHub, "https://github.com/LordMidas/mod_comical_entity_names");
	mod.Registry.addModSource(::MSU.System.Registry.ModSourceDomain.NexusMods, "https://www.nexusmods.com/battlebrothers/mods/776");
	mod.Registry.setUpdateSource(::MSU.System.Registry.ModSourceDomain.GitHub);
});

mh.queue(function() {
	local name = ::Const.Strings.EntityName;
	local namePlural = ::Const.Strings.EntityNamePlural;

	local function setName( _entityTypeKey, _name, _namePlural = null )
	{
		if (_entityTypeKey in ::Const.EntityType)
		{
			local entityType = ::Const.EntityType[_entityTypeKey];
			name[entityType] = _name;
			namePlural[entityType] = _namePlural == null ? _name + "s" : _namePlural;
		}
	}

	setName("Necromancer", "Neck-row-dancer");
	setName("Zombie", "Back Again-er");
	setName("ZombieYeoman", "Armored Back Again-er");
	setName("ZombieKnight", "Fallen Zero");
	setName("ZombieBoss", "Grudge Boo");
	setName("SkeletonLight", "Ancient Secretary", "Anicent Secretaries");
	setName("SkeletonMedium", "Ancient Lego Player");
	setName("SkeletonHeavy", "Ancient Honor Card");
	setName("SkeletonPriest", "Ancient Spooker");
	setName("SkeletonBoss", "The Conqu-errr");
	setName("Vampire", "Necro Servant");
	setName("Ghost", "Spookster");
	setName("Ghoul", "Nacho");
	setName("OrcYoung", "Orc Yung\'Un");
	setName("OrcBerserker", "Orc Big\'Un");
	setName("OrcWarrior", "Orc Worryer");
	setName("OrcWarlord", "Orc WarLoud");
	setName("Militia", "Next Door Militia");
	setName("MilitiaRanged", "Distant Militia");
	setName("MilitiaVeteran", "Better Militia");
	setName("MilitiaCaptain", "Best Militia");
	setName("BountyHunter", "Bounty Haunter");
	setName("Peasant", "Please not");
	setName("CaravanHand", "Carry a van Hand");
	setName("CaravanGuard", "Cart Cop");
	setName("CaravanDonkey", "Poor Donkey");
	setName("Footman", "Marchy McStomp");
	setName("Greatsword", "Swordy McSwordFace");
	setName("Billman", "Pointy McPoke");
	setName("Arbalester", "Shooty McPewPew");
	setName("StandardBearer", "Flaggy McFlapper");
	setName("Sergeant", "Barky McOrder");
	setName("Knight", "Knighty McGood");
	setName("MilitaryDonkey", "Kicky McHooves");
	setName("BanditThug", "Bri\'ish Mug");
	setName("BanditPoacher", "Bri\'ish Roacher");
	setName("BanditMarksman", "Bri\'ish Marksman");
	setName("BanditRaider", "Bri\'ish Reader");
	setName("BanditLeader", "Bri\'ish Litter");
	setName("GoblinAmbusher", "Goblin Am-busy-here");
	setName("GoblinFighter", "Goblin Shanker");
	setName("GoblinLeader", "Goblin Overthere");
	setName("GoblinShaman", "Goblin Shamanigan");
	setName("GoblinWolfrider", "Goblin Woof Woof");
	setName("Wolf", "Waffle");
	setName("Wardog", "Wardrobe");
	setName("ArmoredWardog", "Sturdy Wardrobe");
	setName("Mercenary", "Money no Worry", "Money no Worries");
	setName("MercenaryRanged", "Money no Worry", "Money no Worries");
	setName("Swordmaster", "You die now", "You die for sure now");
	setName("HedgeKnight", "Edge Knight");
	setName("MasterArcher", "Master Blaster");
	// setName("GreenskinCatapult", "");
	setName("Cultist", "Davkul is Coming");
	setName("Direwolf", "Big Bad Wolf", "Big Bad Wolves");
	setName("Lindwurm", "Lintworm");
	setName("Unhold", "Un-hugger");
	setName("UnholdFrost", "Un-hugger");
	setName("UnholdBog", "Un-hugger");
	setName("Spider", "Websnack");
	// setName("SpiderEggs", "");
	setName("Alp", "Take a Nap");
	setName("Hexe", "Hag");
	setName("Schrat", "Scratch");
	setName("SchratSmall", "Small Scratch");
	// setName("Wildman", "");
	setName("Kraken", "Bones McKraken");
	// setName("KrakenTentacle", "");
	// setName("ZombieBetrayer", "");
	// setName("AlpShadow", "");
	setName("BarbarianThrall", "Barbarian Brawl");
	setName("BarbarianMarauder", "Barbarian Beaver");
	setName("BarbarianChampion", "Barbarian Chomper");
	setName("BarbarianDrummer", "Barbarian Dumber");
	setName("BarbarianBeastmaster", "Barbarian Petter");
	setName("BarbarianUnhold", "Armored Un-hugger");
	setName("BarbarianUnholdFrost", "Armored Un-hugger");
	setName("BarbarianChosen", "Bling of the North", "Blings of the North");
	setName("Warhound", "Snorehound");
	// setName("TricksterGod", "");
	setName("BarbarianMadman", "Barbarian Mad Lad");
	setName("Serpent", "");
	setName("SandGolem", "Tea-Frit");
	setName("Hyena", "High Yawner");
	setName("Conscript", "Conskip");
	setName("Gunner", "Boomer");
	setName("Officer", "Millenial");
	setName("Engineer", "Gen Z");
	setName("Assassin", "Gen Alpha");
	setName("Slave", "Shave");
	setName("Gladiator", "GladiYeeter")
	// setName("Mortar", "");
	setName("NomadCutthroat", "No-Mad Cutthrough");
	setName("NomadOutlaw", "No-Mad Out(back)Lawyer");
	setName("NomadSlinger", "No-Mad Flinger");
	setName("NomadArcher", "No-Mad Lurcher");
	setName("NomadLeader", "No-Mad Leather");
	setName("DesertStalker", "Desert Stalk \'n\' Roll");
	setName("DesertDevil", "Ballet Dancer");
	setName("Executioner", "Eggs-Terminator");
	setName("PeasantSouthern", "Sit-zen");
	// setName("SkeletonLich", "");
	// setName("SkeletonLichMirrorImage", "");
	// setName("SkeletonPhylactery", "");
	// setName("ZombieTreasureHunter", "");
	// setName("FlyingSkull", "");
	setName("Oathbringer", "Oat Bringer");

	if (::Hooks.hasMod("mod_reforged"))
	{
		setName("RF_BanditScoundrel", "Bri\'ish Scoundrel");
		setName("RF_BanditRobber", "Bri\'ish Robber");
		setName("RF_BanditHunter", "Bri\'ish Hunter");
		setName("RF_BanditVandal", "Bri\'ish Vandal");
		setName("RF_BanditPillager", "Bri\'ish Pillager");
		setName("RF_BanditOutlaw", "Bri\'ish Out(back)Lawyer");
		setName("RF_BanditBandit", "Bri\'ish Bandit");
		setName("RF_BanditHighwayman", "Bri\'ish Motorwayman");
		setName("RF_BanditMarauder", "Bri\'ish Marauder");
		setName("RF_BanditKiller", "Bri\'ish Killer");
		setName("RF_BanditSharpshooter", "Bri\'ish Sharpshoo\'er");
		setName("RF_BanditBaron", "Bri\'ish Baron");

		setName("RF_SkeletonLightElite", "Ancient Deputy", "Ancient Deputies");
		setName("RF_SkeletonMediumElite", "Ancient Palate Cleaner");
		setName("RF_SkeletonHeavyLesser", "Ancient Pray-torian");
		setName("RF_SkeletonDecanus", "Ancient Decaf");
		setName("RF_SkeletonCenturion", "Ancient Capuccino");
		setName("RF_SkeletonLegatus", "Ancient Latte");
		setName("RF_VampireLord", "Necro Not-Servant");


		setName("RF_FootmanHeavy", "Marchy McThud");
		setName("RF_BillmanHeavy", "Pointy McReach");
		setName("RF_ArbalesterHeavy", "Snipe-y McZoom");
		setName("RF_Herald", "Fancy McFlagger");
		setName("RF_Marshal", "Blitz McKrieger");
		setName("RF_ManAtArms", "Man McArms", "Men McArms");
		setName("RF_Fencer", "Speedy McGoGo");
		setName("RF_KnightAnointed", "Knighty McAnointy");
		setName("RF_Squire", "Suck McQuire");
		setName("RF_HeraldsBodyguard", "Fashion McIsta");
	}

	local entityNamesPage = mod.ModSettings.addPage("EntityNames", "Entity Names");

	local keys = [];
	foreach (key, entityType in ::Const.EntityType)
	{
		if (typeof entityType == "integer" && entityType >= 0)
		{
			keys.push(key);
		}
	}

	keys.sort();

	foreach (key in keys)
	{
		local type = ::Const.EntityType[key];

		entityNamesPage.addStringSetting("Name_" + key, ::Const.Strings.EntityName[type], key, "Set a custom name for this entity.")
			.addAfterChangeCallback(@( _ ) ::Const.Strings.EntityName[::Const.EntityType[this.getID().slice(5)]] = this.getValue());

		entityNamesPage.addStringSetting("NamePlural_" + key, ::Const.Strings.EntityNamePlural[type], key + " Plural", "Set a custom plural name for this entity.")
			.addAfterChangeCallback(@( _ ) ::Const.Strings.EntityNamePlural[::Const.EntityType[this.getID().slice(11)]] = this.getValue());
	}
}, ::Hooks.QueueBucket.AfterHooks);
