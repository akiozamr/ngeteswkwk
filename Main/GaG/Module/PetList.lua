-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-05 09:47:32
-- Luau version 6, Types version 3
-- Time taken: 0.044373 seconds

local RunService = game:GetService("RunService")
local var6
local function INLINED() -- Internal function, doesn't exist in bytecode
	var6 = game:GetService("ServerStorage"):WaitForChild("PetAssets")
	return var6
end
if not RunService:IsServer() or not INLINED() then
	var6 = Instance.new("Folder")
end
local PetAnimations = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Animations"):WaitForChild("PetAnimations")
local module = {
	Dog = {
		Description = "Digging Buddy: Occasionally digs up a random seed";
		Actions = {};
		Model = var6:FindFirstChild("Dog");
		DefaultHunger = 1000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://135018170520317";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 55000;
		Rarity = "Common";
		Passives = {"Digging Buddy"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Dog.Idle;
			Walk = PetAnimations.Dog.Walk;
			Dig = PetAnimations.Dog.Dig;
		};
		States = {};
	};
	["Golden Lab"] = {
		Description = "Digging Friend: Occasionally digs up a random seed at a higher chance";
		Actions = {};
		Model = var6:FindFirstChild("Dog");
		Variant = "Golden Lab";
		DefaultHunger = 1200;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://99376934607716";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 55000;
		Rarity = "Common";
		Passives = {"Digging Friend"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Dog.Idle;
			Walk = PetAnimations.Dog.Walk;
			Dig = PetAnimations.Dog.Dig;
		};
		States = {};
	};
	Bunny = {
		Description = "Carrot Chomper: Runs to carrots, eats them, and grants bonus sheckles (more than normal value)";
		Actions = {};
		Model = var6:FindFirstChild("Bunny");
		DefaultHunger = 1100;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://85830855120751";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 9;
		SellPrice = 55000;
		Rarity = "Common";
		Passives = {"Carrot Chomper"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Bunny.Idle;
			Walk = PetAnimations.Bunny.Walk;
			Chomp = PetAnimations.Bunny.Chomp;
		};
		States = {};
	};
	["Black Bunny"] = {
		Description = "Carrot Devourer: Runs to carrots, eats them, and grants bonus sheckles (more than normal value)";
		Actions = {};
		Model = var6:FindFirstChild("Bunny");
		Variant = "Black Bunny";
		DefaultHunger = 1300;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://86614624778104";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 9;
		SellPrice = 165000;
		Rarity = "Uncommon";
		Passives = {"Carrot Chomper"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Bunny.Idle;
			Walk = PetAnimations.Bunny.Walk;
			Chomp = PetAnimations.Bunny.Chomp;
		};
		States = {};
	};
	Cat = {
		Description = "Cat Nap: Cat naps in a random spot in your farm, emitting an aura that boosts nearby fruit size";
		Actions = {};
		Model = var6:FindFirstChild("Cat");
		DefaultHunger = 1400;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://136444015144013";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 12;
		SellPrice = 165000;
		Rarity = "Uncommon";
		Passives = {"Cat Nap"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Cat.Idle;
			Walk = PetAnimations.Cat.Walk;
			Nap = PetAnimations.Cat.Nap;
		};
		States = {};
	};
	Deer = {
		Description = "Forester: When harvesting berry plants, there is a chance the fruit will remain";
		Actions = {};
		Model = var6:FindFirstChild("Deer");
		DefaultHunger = 2500;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.009;
		Icon = "rbxassetid://91926785467809";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 12;
		SellPrice = 165000;
		Rarity = "Uncommon";
		Passives = {"Forester"};
		YHeightScaler = 0.65;
		Animations = {
			Idle = PetAnimations.Deer.Idle;
			Walk = PetAnimations.Deer.Walk;
			Stomp = PetAnimations.Deer.Stomp;
		};
		States = {};
	};
	Chicken = {
		Description = "Eggcelerator: Decreases the time needed to hatch other eggs";
		Actions = {};
		Model = var6:FindFirstChild("Chicken");
		DefaultHunger = 3400;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://108080824427369";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 165000;
		Rarity = "Uncommon";
		Passives = {"Eggcelerator"};
		YHeightScaler = 0.15;
		Animations = {
			Idle = PetAnimations.Chicken.Idle;
			Walk = PetAnimations.Chicken.Walk;
		};
		States = {};
	};
	["Orange Tabby"] = {
		Description = "Orange Tabby: Orange Tabby naps in a random spot in your farm, emitting an aura that boosts nearby fruit size";
		Actions = {};
		Model = var6:FindFirstChild("Cat");
		Variant = "Orange Tabby";
		DefaultHunger = 1500;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://103360220936666";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 12;
		SellPrice = 660000;
		Rarity = "Rare";
		Passives = {"Lazy Nap"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Cat.Idle;
			Walk = PetAnimations.Cat.Walk;
			Nap = PetAnimations.Cat.Nap;
		};
		States = {};
	};
	["Spotted Deer"] = {
		Description = "Forester: When harvesting berry plants, there is a chance the fruit will remain";
		Actions = {};
		Model = var6:FindFirstChild("Spotted Deer");
		DefaultHunger = 2500;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.009;
		Icon = "rbxassetid://126439207915258";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 12;
		SellPrice = 660000;
		Rarity = "Rare";
		Passives = {"Spotted Forester"};
		YHeightScaler = 0.65;
		Animations = {
			Idle = PetAnimations.Deer.Idle;
			Walk = PetAnimations.Deer.Walk;
			Stomp = PetAnimations.Deer.Stomp;
		};
		States = {};
	};
	Rooster = {
		Description = "Eggcelerator: Decreases the time needed to hatch other eggs";
		Actions = {};
		Model = var6:FindFirstChild("Rooster");
		DefaultHunger = 4000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://137107493326109";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 650000;
		Rarity = "Rare";
		Passives = {"Better Eggcelerator"};
		YHeightScaler = 0.15;
		Animations = {
			Idle = PetAnimations.Chicken.Idle;
			Walk = PetAnimations.Chicken.Walk;
		};
		States = {};
	};
	Monkey = {
		Description = "Cheeky Refund: 3% chance to get your fruit back when you sell it";
		Actions = {};
		Model = var6:FindFirstChild("Monkey");
		DefaultHunger = 7400;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://113881196210664";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 660000;
		Rarity = "Rare";
		Passives = {"Cheeky Refund"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Monkey.Idle;
			Walk = PetAnimations.Monkey.Walk;
			Steal = PetAnimations.Monkey.Steal;
		};
		States = {};
	};
	Pig = {
		Description = "Fertilizer Frenzy: Occasionally releases a fertilizing AOE boosting plant size and mutation chance";
		Actions = {};
		Model = var6:FindFirstChild("Pig");
		DefaultHunger = 5000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.008;
		Icon = "rbxassetid://134476443266448";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 650000;
		Rarity = "Rare";
		Passives = {"Fertilizer Frenzy"};
		YHeightScaler = 0.6;
		Animations = {
			Idle = PetAnimations.Pig.Idle;
			Walk = PetAnimations.Pig.Walk;
			Frenzy = PetAnimations.Pig.Frenzy;
		};
		States = {};
	};
	["Silver Monkey"] = {
		Description = "Cheeky Refund: 3% chance to get your fruit back when you sell it";
		Actions = {};
		Model = var6:FindFirstChild("Monkey");
		Variant = "Silver Monkey";
		DefaultHunger = 8000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://136985272620600";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 3300000;
		Rarity = "Legendary";
		Passives = {"Premium Cheeky Refund"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Monkey.Idle;
			Walk = PetAnimations.Monkey.Walk;
			Steal = PetAnimations.Monkey.Steal;
		};
		States = {};
	};
	Turtle = {
		Description = "Turtle Tinkerer: Slowing aura that makes sprinklers last longer";
		Actions = {};
		Model = var6:FindFirstChild("Turtle");
		DefaultHunger = 10000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.004;
		Icon = "rbxassetid://92906330087175";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 5;
		SellPrice = 3300000;
		Rarity = "Legendary";
		Passives = {"Turtle Tinkerer"};
		YHeightScaler = -0.32;
		Animations = {
			Idle = PetAnimations.Turtle.Idle;
			Walk = PetAnimations.Turtle.Walk;
		};
		States = {};
	};
	Cow = {
		Description = "Milk of the Land: Fertilizing aura that boosts nearby plant growth speed ";
		Actions = {};
		Model = var6:FindFirstChild("Cow");
		DefaultHunger = 9500;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://118832676475537";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 3300000;
		Rarity = "Legendary";
		YHeightScaler = 0.5;
		Passives = {"Milk of the Land"};
		Animations = {
			Idle = PetAnimations.Cow.Idle;
			Walk = PetAnimations.Cow.Walk;
		};
		States = {};
	};
	["Sea Otter"] = {
		Description = "Water Spray: Water's plants randomly like a watering can";
		Actions = {};
		Model = var6:FindFirstChild("Sea Otter");
		DefaultHunger = 30000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://94422445572440";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 9;
		SellPrice = 3300000;
		Rarity = "Legendary";
		Passives = {"Water Spray"};
		YHeightScaler = -0.25;
		Animations = {
			Idle = PetAnimations.Otter.Idle;
			Walk = PetAnimations.Otter.Walk;
			Spray = PetAnimations.Otter.Spray;
		};
	};
	["Polar Bear"] = {
		Description = "Polar Express: Occasionally sets a random nearby fruit cold, turning it into Chilled with a small chance for Frozen";
		Actions = {};
		Model = var6:FindFirstChild("Polar Bear");
		DefaultHunger = 20000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://72209118254193";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 3300000;
		Rarity = "Legendary";
		Passives = {"Polar Express"};
		YHeightScaler = 0.35;
		Animations = {
			Idle = PetAnimations.Bear.Idle;
			Walk = PetAnimations.Bear.Walk;
			Roar = PetAnimations.Bear.Roar;
		};
	};
	Caterpillar = {
		Description = "Leaf Lover Passive: Boost nearby Leafy plants growth rate";
		Actions = {};
		Model = var6:FindFirstChild("Caterpillar");
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.0065;
		Icon = "rbxassetid://119651461526366";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 6;
		SellPrice = 50000000;
		Rarity = "Legendary";
		Passives = {"Leaf Lover"};
		YHeightScaler = -0.55;
		Animations = {
			Idle = PetAnimations.Caterpillar.Idle;
			Walk = PetAnimations.Caterpillar.Walk;
		};
	};
	Snail = {
		Description = "Slow and Steady: Increased lucky harvest chance";
		Actions = {};
		Model = var6:FindFirstChild("Snail");
		DefaultHunger = 12000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), math.pi);
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://80970021440625";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 3;
		SellPrice = 50000000;
		Rarity = "Legendary";
		Passives = {"Slow and Steady"};
		YHeightScaler = 0;
		Animations = {
			Idle = PetAnimations.Snail.Idle;
			Walk = PetAnimations.Snail.Walk;
		};
		States = {};
	};
	["Giant Ant"] = {
		Description = "For the Blue Colony: Small chance to duplicate harvested plant & Prehistoric Harvester: Increased chance to duplicate harvested candy type plant";
		Actions = {};
		Model = var6:FindFirstChild("Giant Ant");
		DefaultHunger = 18000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), math.pi);
		ModelScalePerLevel = 0.003;
		Icon = "rbxassetid://71413253805996";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 5;
		SellPrice = 60000000;
		Rarity = "Mythical";
		Passives = {"For the Blue Colony", "Candy Harvester"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Ant.Idle;
			Walk = PetAnimations.Ant.Walk;
			Grab = PetAnimations.Ant.Grab;
		};
	};
	["Praying Mantis"] = {
		Description = "Zen Zone: Prays, then gives plants in AOE Buff that increases the chance of gold fruit from plants";
		Actions = {};
		Model = var6:FindFirstChild("Praying Mantis");
		DefaultHunger = 55000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), math.pi);
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://121485029406440";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 60000000;
		Rarity = "Mythical";
		Passives = {"Zen Zone"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Mantis.Idle;
			Walk = PetAnimations.Mantis.Walk;
			Pray = PetAnimations.Mantis.Pray;
		};
	};
	Dragonfly = {
		Description = "Transmutation: Every now and then turns a fruit to gold";
		Actions = {};
		Model = var6:FindFirstChild("Dragonfly");
		DefaultHunger = 100000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), 0);
		ModelScalePerLevel = 0.008;
		Icon = "rbxassetid://118484611393651";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 9;
		SellPrice = 70000000;
		Rarity = "Divine";
		Passives = {"Transmutation"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Dragonfly.Idle;
			Walk = PetAnimations.Dragonfly.Walk;
		};
	};
	Panda = {
		Description = "Bamboozle: Waddles to bamboo, eats it, and grants bonus sheckles (more than normal value)";
		Actions = {};
		Model = var6:FindFirstChild("Panda");
		DefaultHunger = 20000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://107090327345246";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 3300000;
		Rarity = "Legendary";
		Passives = {"Bamboozle"};
		YHeightScaler = 0.35;
		Animations = {
			Idle = PetAnimations.Panda.Idle;
			Walk = PetAnimations.Panda.Walk;
			Chomp = PetAnimations.Panda.Chomp;
		};
	};
	Hedgehog = {
		Description = "Prickly Lover: Makes nearby prickly fruit grow bigger";
		Actions = {};
		Model = var6:FindFirstChild("Hedgehog");
		DefaultHunger = 30000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://83544966481425";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 7;
		SellPrice = 1000000;
		Rarity = "Rare";
		Passives = {"Prickly Lover"};
		YHeightScaler = 0.01;
		Animations = {
			Idle = PetAnimations.Hedgehog.Idle;
			Walk = PetAnimations.Hedgehog.Walk;
			Curl = PetAnimations.Hedgehog.Curl;
			CurlLoop = PetAnimations.Hedgehog.CurlLoop;
		};
	};
	Kiwi = {
		Description = "Nocturnal Nursery: Occasionally reduces the hatch time of the egg with the most hatch time left";
		Actions = {};
		Model = var6:FindFirstChild("Kiwi");
		DefaultHunger = 50000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://104651906442347";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 1000000;
		Rarity = "Rare";
		Passives = {"Nocturnal Nursery"};
		YHeightScaler = 0.9;
		Animations = {
			Idle = PetAnimations.Kiwi.Idle;
			Walk = PetAnimations.Kiwi.Walk;
			Nurse = PetAnimations.Kiwi.Nurse;
		};
	};
	Mole = {
		Description = "Treasure Hunter: Will occasionally dig down to find gear or sheckles";
		Actions = {};
		Model = var6:FindFirstChild("Mole");
		DefaultHunger = 50000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), 0);
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://79089804794269";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 6;
		SellPrice = 2000000;
		Rarity = "Legendary";
		Passives = {"Treasure Hunter"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Mole.Idle;
			Walk = PetAnimations.Mole.Walk;
			DigDown = PetAnimations.Mole.DigDown;
			DigUp = PetAnimations.Mole.DigUp;
			DigWalk = PetAnimations.Mole.DigWalk;
		};
	};
	Frog = {
		Description = "Croak: Will occasionally advance a nearby plant's growth by 24 hours";
		Actions = {};
		Model = var6:FindFirstChild("Frog");
		DefaultHunger = 50000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://96930166899467";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 3000000;
		Rarity = "Legendary";
		Passives = {"Croak"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Frog.Idle;
			Walk = PetAnimations.Frog.Walk;
			Croak = PetAnimations.Frog.Croak;
		};
	};
	["Echo Frog"] = {
		Description = "Echo Croak: Will occasionally advance a nearby plant's growth by 24 hours";
		Actions = {};
		Model = var6:FindFirstChild("Echo Frog");
		DefaultHunger = 50000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://102271225890686";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 5000000;
		Rarity = "Mythical";
		Passives = {"Echo Croak"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Frog.Idle;
			Walk = PetAnimations.Frog.Walk;
			Croak = PetAnimations.Frog.Croak;
		};
	};
	Raccoon = {
		Description = "Rascal: Occasionally steals (duplicates) fruit from other player's plot and hands it to you";
		Actions = {};
		Model = var6:FindFirstChild("Raccoon");
		DefaultHunger = 45000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://136232391555861";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 20000000;
		Rarity = "Divine";
		Passives = {"Rascal"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Raccoon.Idle;
			Walk = PetAnimations.Raccoon.Walk;
			Steal = PetAnimations.Raccoon.Steal;
		};
	};
	["Night Owl"] = {
		Description = "King of the Night: Grants bonus experience per second gain to all active pets.";
		Actions = {};
		Model = var6:FindFirstChild("Night Owl");
		DefaultHunger = 50000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://101760640498094";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 15000000;
		Rarity = "Mythical";
		Passives = {"King of the Night", "Movement Variation"};
		YHeightScaler = 0.5;
		Animations = {
			Idle = PetAnimations.Owl.Idle;
			Walk = PetAnimations.Owl.Walk;
			Fly = PetAnimations.Owl.Fly;
			FlyUp = PetAnimations.Owl.FlyUp;
			FlyDown = PetAnimations.Owl.FlyDown;
		};
	};
	Owl = {
		Description = "Prince of the Night: Grants bonus experience per second gain to all active pets.";
		Actions = {};
		Model = var6:FindFirstChild("Owl");
		DefaultHunger = 50000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://138016343005291";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 15000000;
		Rarity = "Mythical";
		Passives = {"Prince of the Night", "Movement Variation"};
		YHeightScaler = 0.5;
		Animations = {
			Idle = PetAnimations.Owl.Idle;
			Walk = PetAnimations.Owl.Walk;
			Fly = PetAnimations.Owl.Fly;
			FlyUp = PetAnimations.Owl.FlyUp;
			FlyDown = PetAnimations.Owl.FlyDown;
		};
	};
	["Grey Mouse"] = {
		Description = "Whisker Wisdom: Occasionally gains bonus experience & Scamper: Increase player movement speed";
		Actions = {};
		Model = var6:FindFirstChild("Grey Mouse");
		DefaultHunger = 15000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://116310390398341";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 5500000;
		Rarity = "Legendary";
		Passives = {"Whisker Wisdom", "Scamper"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Mouse.Idle;
			Walk = PetAnimations.Mouse.Walk;
			Think = PetAnimations.Mouse.Think;
		};
		States = {};
	};
	Squirrel = {
		Description = "Seed Stash: Planting seeds have a small chance to not be consumed. Rarer plants have less chance. Does not work with exclusive seeds.";
		Actions = {};
		Model = var6:FindFirstChild("Squirrel");
		DefaultHunger = 15000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://96950434895806";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 5500000;
		Rarity = "Legendary";
		Passives = {};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Squirrel.Idle;
			Walk = PetAnimations.Squirrel.Walk;
		};
		States = {};
	};
	["Brown Mouse"] = {
		Description = "Whiskier Wisdom: Occasionally gains bonus experience & Cheese Hop: Increase player jump height";
		Actions = {};
		Model = var6:FindFirstChild("Grey Mouse");
		Variant = "Brown Mouse";
		DefaultHunger = 15000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://94641319183999";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 9;
		SellPrice = 5500000;
		Rarity = "Legendary";
		Passives = {"Whiskier Wisdom", "Cheese Hop"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Mouse.Idle;
			Walk = PetAnimations.Mouse.Walk;
			Think = PetAnimations.Mouse.Think;
		};
		States = {};
	};
	["Red Giant Ant"] = {
		Description = "For the Red Colony: Small chance to duplicate harvested plant & Fruit Harvester: Increased chance to duplicate harvested fruit type plant";
		Actions = {};
		Model = var6:FindFirstChild("Giant Ant");
		Variant = "Red Giant Ant";
		DefaultHunger = 15000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), math.pi);
		ModelScalePerLevel = 0.003;
		Icon = "rbxassetid://89449712431551";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 5;
		SellPrice = 10500000;
		Rarity = "Mythical";
		Passives = {"For the Red Colony", "Fruit Harvester"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Ant.Idle;
			Walk = PetAnimations.Ant.Walk;
			Grab = PetAnimations.Ant.Grab;
		};
	};
	["Red Fox"] = {
		Description = "Scoundrel: Every <Cooldown>m, goes to another player's plot and tries to steal a seed from a random plant. The rarer the plant, the harder it is to succeed!";
		Actions = {};
		Model = var6:FindFirstChild("Red Fox");
		DefaultHunger = 35000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://116662854190616";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 16;
		SellPrice = 20500000;
		Rarity = "Divine";
		Passives = {"Scoundrel"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Fox.Idle;
			Walk = PetAnimations.Fox.Walk;
			Steal = PetAnimations.Fox.Steal;
		};
	};
	["Chicken Zombie"] = {
		Description = "Zombify: Occasionally has a chance to zombify a nearby random fruit & Eggcelerator: Decreases the time needed to hatch other eggs";
		Actions = {};
		Model = var6:FindFirstChild("Chicken Zombie");
		DefaultHunger = 35000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://108581559611673";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 1000000;
		Rarity = "Mythical";
		Passives = {"Zombify", "Eggcelerator"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.ChickenZombie.Idle;
			Walk = PetAnimations.ChickenZombie.Walk;
			Zombify = PetAnimations.ChickenZombie.Zombify;
		};
		States = {};
	};
	["Blood Hedgehog"] = {
		Description = "Sanguine Spike: Makes nearby prickly fruit have increased variant chance and grow bigger";
		Actions = {};
		Model = var6:FindFirstChild("Blood Hedgehog");
		DefaultHunger = 30000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://76471191139414";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 7;
		SellPrice = 33000000;
		Rarity = "Legendary";
		Passives = {"Sanguine Spike", "Prickly Blessing"};
		YHeightScaler = 0.01;
		Animations = {
			Idle = PetAnimations.Hedgehog.Idle;
			Walk = PetAnimations.Hedgehog.Walk;
			Curl = PetAnimations.Hedgehog.Curl;
			CurlLoop = PetAnimations.Hedgehog.CurlLoop;
		};
	};
	["Blood Kiwi"] = {
		Description = "Crimson Cradle: Occasionally reduces the egg hatch time and boosts egg hatch speed";
		Actions = {};
		Model = var6:FindFirstChild("Blood Kiwi");
		DefaultHunger = 45000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://87343374343285";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 30000000;
		Rarity = "Legendary";
		Passives = {"Crimson Cradle", "Better Eggcelerator"};
		YHeightScaler = 0.9;
		Animations = {
			Idle = PetAnimations.Kiwi.Idle;
			Walk = PetAnimations.Kiwi.Walk;
			Nurse = PetAnimations.Kiwi.Nurse;
		};
	};
	["Blood Owl"] = {
		Description = "Monarch of Midnight: Grants bonus experience per second gain to all active pets";
		Actions = {};
		Model = var6:FindFirstChild("Blood Owl");
		DefaultHunger = 50000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://81262783747840";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 70000000;
		Rarity = "Divine";
		Passives = {"Monarch of Midnight", "Movement Variation"};
		YHeightScaler = 0.5;
		Animations = {
			Idle = PetAnimations.Owl.Idle;
			Walk = PetAnimations.Owl.Walk;
			Fly = PetAnimations.Owl.Fly;
			FlyUp = PetAnimations.Owl.FlyUp;
			FlyDown = PetAnimations.Owl.FlyDown;
		};
	};
	["Moon Cat"] = {
		Description = "Moon Nap: Moon cat naps in a random spot in your farm, and boosts nearby fruit size & Moon Harvest: Grants chance for Night type plants to replant when harvested ";
		Actions = {};
		Model = var6:FindFirstChild("Cat");
		Variant = "Moon Cat";
		DefaultHunger = 2400;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://72392850111255";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 25000000;
		Rarity = "Legendary";
		Passives = {"Moon Nap", "Moon Harvest"};
		YHeightScaler = 0.4;
		Animations = {
			Idle = PetAnimations.Cat.Idle;
			Walk = PetAnimations.Cat.Walk;
			Nap = PetAnimations.Cat.Nap;
		};
		States = {};
	};
	Bee = {
		Description = "Pollinator: Occasionally pollinates fruit";
		Actions = {};
		Model = var6:FindFirstChild("Bee");
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), (-math.pi));
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://114116135745614";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 9;
		SellPrice = 400000;
		Rarity = "Uncommon";
		Passives = {"Pollinator"};
		YHeightScaler = 0.2;
		Animations = {
			Idle = PetAnimations.Bee.Idle;
			Walk = PetAnimations.Bee.Walk;
			Pollinate = PetAnimations.Bee.Pollinate;
		};
	};
	["Honey Bee"] = {
		Description = "Beeter Pollinator: Occasionally pollinates fruit";
		Actions = {};
		Model = var6:FindFirstChild("Bee");
		Variant = "Honey Bee";
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), (-math.pi));
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://134999468799162";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 9;
		SellPrice = 800000;
		Rarity = "Rare";
		Passives = {"Beeter Pollinator"};
		YHeightScaler = 0.2;
		Animations = {
			Idle = PetAnimations.Bee.Idle;
			Walk = PetAnimations.Bee.Walk;
			Pollinate = PetAnimations.Bee.Pollinate;
		};
	};
	["Petal Bee"] = {
		Description = "Pollinator: Occasionally pollinates fruit & Flower Harvest: Harvested flowers have a chance to stay";
		Actions = {};
		Model = var6:FindFirstChild("Bee");
		Variant = "Petal Bee";
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), (-math.pi));
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://137924182648564";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 9;
		SellPrice = 1000000;
		Rarity = "Legendary";
		Passives = {"Pollinator", "Flower Harvest"};
		YHeightScaler = 0.03;
		Animations = {
			Idle = PetAnimations.Bee.Idle;
			Walk = PetAnimations.Bee.Walk;
			Pollinate = PetAnimations.Bee.Pollinate;
		};
	};
	["Bear Bee"] = {
		Description = "Wanna-Bee: Occasionally tries to pollinate fruit, but it just ends up being Honey-Glazed";
		Actions = {};
		Model = var6:FindFirstChild("Bear Bee");
		DefaultHunger = 45000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://97465846056354";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 4000000;
		Rarity = "Mythical";
		Passives = {"Wanna-Bee"};
		YHeightScaler = 0.35;
		Animations = {
			Idle = PetAnimations.BearBee.Idle;
			Walk = PetAnimations.BearBee.Walk;
			Sit = PetAnimations.BearBee.Sit;
		};
	};
	["Queen Bee"] = {
		Description = "Queen Pollinator: Occasionally pollinates fruit instantly & For the Queen: Occasionally refrehes the pet with the highest cooldown ability";
		Actions = {};
		Model = var6:FindFirstChild("Queen Bee");
		DefaultHunger = 65000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), -2.530727415391778);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://127281358672581";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 5;
		SellPrice = 8000000;
		Rarity = "Divine";
		Passives = {"Queen Pollinator", "For the Queen"};
		YHeightScaler = 10;
		Animations = {
			Idle = PetAnimations.QueenBee.Idle;
			Walk = PetAnimations.QueenBee.Walk;
			Spin = PetAnimations.QueenBee.Spin;
		};
	};
	Wasp = {
		Description = "Wasp Pollinator: Occasionally pollinates fruit & Stinger: Occasionally stings pet with highest cooldown advancing cooldown";
		Actions = {};
		Model = var6:FindFirstChild("Wasp");
		DefaultHunger = 28000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://72767862942880";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 12;
		SellPrice = 1000000;
		Rarity = "Uncommon";
		Passives = {"Wasp Pollinator", "Stinger"};
		YHeightScaler = 0.2;
		Animations = {
			Idle = PetAnimations.Wasp.Idle;
			Walk = PetAnimations.Wasp.Walk;
			Pollinate = PetAnimations.Wasp.Pollinate;
			Sting = PetAnimations.Wasp.Sting;
		};
	};
	["Tarantula Hawk"] = {
		Description = "Wasp Pollinator: Occasionally pollinates fruit & Tarantula Stinger: Occasionally stings pet with highest cooldown advancing cooldown";
		Actions = {};
		Model = var6:FindFirstChild("Tarantula Hawk");
		DefaultHunger = 28000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://126203792467378";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 12;
		SellPrice = 2000000;
		Rarity = "Rare";
		Passives = {"Pollinator", "Tarantula Stinger"};
		YHeightScaler = 0.2;
		Animations = {
			Idle = PetAnimations.Wasp.Idle;
			Walk = PetAnimations.Wasp.Walk;
			Pollinate = PetAnimations.Wasp.Pollinate;
			Sting = PetAnimations.Wasp.Sting;
		};
	};
	Moth = {
		Description = "Silksong: Sings to a random pet and magically restore its hunger";
		Actions = {};
		Model = var6:FindFirstChild("Moth");
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://134180528391091";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 8;
		SellPrice = 4000000;
		Rarity = "Legendary";
		Passives = {"Silksong"};
		YHeightScaler = 0.2;
		Animations = {
			Idle = PetAnimations.Moth.Idle;
			Walk = PetAnimations.Moth.Walk;
			Sing = PetAnimations.Moth.Sing;
		};
	};
	Butterfly = {
		Description = "Rainbow Flutter: Occasionally flies to a fruit with 4+ mutations, removes all mutations from it and converts it into rainbow. Ignores favorited fruit";
		Actions = {};
		Model = var6:FindFirstChild("Butterfly");
		DefaultHunger = 26000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://119048229505161";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 8;
		SellPrice = 8000000;
		Rarity = "Mythical";
		Passives = {"Rainbow Flutter"};
		YHeightScaler = 0.2;
		Animations = {
			Idle = PetAnimations.Butterfly.Idle;
			Walk = PetAnimations.Butterfly.Walk;
			Flutter = PetAnimations.Butterfly.Flutter;
		};
	};
	["Disco Bee"] = {
		Description = "Disco Disco: Occasionally has a chance to turn a nearby fruit into Disco";
		Actions = {};
		Model = var6:FindFirstChild("Disco Bee");
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), (-math.pi));
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://139406192899443";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 9;
		SellPrice = 12000000;
		Rarity = "Divine";
		Passives = {"Disco Disco"};
		YHeightScaler = 0.03;
		Animations = {
			Idle = PetAnimations.DiscoBee.Idle;
			Walk = PetAnimations.DiscoBee.Walk;
			Dance = PetAnimations.DiscoBee.Dance;
		};
	};
	["Cooked Owl"] = {
		Description = "Let Him Cook: Occasionaly burns or cook a random nearby fruit & King of the Grill: Grants bonus experience per second gain to all active pets. Also very tasty!";
		Actions = {};
		Model = var6:FindFirstChild("Cooked Owl");
		ToolWeldOffset = true;
		DefaultHunger = 50000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://78954652883059";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 3000000;
		Rarity = "Mythical";
		Passives = {"Let Him Cook", "King of the Grill", "Movement Variation"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.CookedOwl.Idle;
			Walk = PetAnimations.CookedOwl.Walk;
			Fly = PetAnimations.CookedOwl.Fly;
			FlyUp = PetAnimations.CookedOwl.FlyUp;
			FlyDown = PetAnimations.CookedOwl.FlyDown;
		};
	};
	["Pack Bee"] = {
		Description = "Pack Bee: Increases backpack size by 25 and occasionally pollinates nearby fruit";
		Actions = {};
		Model = var6:FindFirstChild("Pack Bee");
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), (-math.pi));
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://105775306251306";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 9;
		SellPrice = 2500000;
		Rarity = "Mythical";
		Passives = {"Pollinator", "Pack Bee"};
		YHeightScaler = 0.5;
		Animations = {
			Idle = PetAnimations.Bee.Idle;
			Walk = PetAnimations.Bee.Walk;
		};
	};
	Starfish = {
		Description = "You're a Star: Gains additional XP per second";
		Actions = {};
		Model = var6:FindFirstChild("Starfish");
		DefaultHunger = 1500;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://120520383369074";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 0.25;
		SellPrice = 50000;
		Rarity = "Common";
		Passives = {"You're a Star"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Starfish.Idle;
			Walk = PetAnimations.Starfish.Walk;
		};
		States = {};
	};
	Crab = {
		Description = "Pinch Pocket: Occasionally goes to another player and pinches them and grants you a small amount of sheckles";
		Actions = {};
		Model = var6:FindFirstChild("Crab");
		DefaultHunger = 3000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://73259620945174";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 4;
		SellPrice = 60000;
		Rarity = "Common";
		Passives = {"Pinch Pocket"};
		YHeightScaler = 0.8;
		Animations = {
			Idle = PetAnimations.Crab.Idle;
			Walk = PetAnimations.Crab.Walk;
			Pinch = PetAnimations.Crab.Pinch;
		};
		States = {};
	};
	Seagull = {
		Description = "Scavenger: Shoveling plants have a chance to drop the equivalent seed. Does not work on fruits";
		Actions = {};
		Model = var6:FindFirstChild("Seagull");
		DefaultHunger = 3500;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://125267211322255";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 7;
		SellPrice = 70000;
		Rarity = "Common";
		Passives = {"Scavenger", "Movement Variation"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Seagull.Idle;
			Walk = PetAnimations.Seagull.Walk;
			Fly = PetAnimations.Seagull.Fly;
			FlyUp = PetAnimations.Seagull.FlyUp;
			FlyDown = PetAnimations.Seagull.FlyDown;
		};
		States = {};
	};
	Toucan = {
		Description = "Tropical Lover: Makes all nearby Tropical type plants have increased variant chance and grow bigger";
		Actions = {};
		Model = var6:FindFirstChild("Toucan");
		DefaultHunger = 9000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://118598422473758";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 7;
		SellPrice = 880000;
		Rarity = "Rare";
		Passives = {"Tropical Lover", "Tropical Blessing", "Movement Variation"};
		YHeightScaler = 0.9;
		Animations = {
			Idle = PetAnimations.Toucan.Idle;
			Walk = PetAnimations.Toucan.Walk;
			Fly = PetAnimations.Toucan.Fly;
			FlyUp = PetAnimations.Toucan.FlyUp;
			FlyDown = PetAnimations.Toucan.FlyDown;
		};
	};
	Flamingo = {
		Description = "Flamboyance: Occasionally stands on one legs and all nearby plants will grow incredibly fast";
		Actions = {};
		Model = var6:FindFirstChild("Flamingo");
		DefaultHunger = 14000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://122573642551827";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 880000;
		Rarity = "Rare";
		Passives = {"Flamboyance"};
		YHeightScaler = 2.4;
		Animations = {
			Idle = PetAnimations.Flamingo.Idle;
			Walk = PetAnimations.Flamingo.Walk;
			Stand = PetAnimations.Flamingo.Stand;
		};
	};
	["Sea Turtle"] = {
		Description = "Shell Share: Occasionally shares its wisdom to a random active pet granting bonus experience & Water Splash: Occasionally has a chance to Wet a nearby fruit";
		Actions = {};
		Model = var6:FindFirstChild("Sea Turtle");
		DefaultHunger = 22200;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.004;
		Icon = "rbxassetid://136324651089948";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 1.5;
		SellPrice = 880000;
		Rarity = "Rare";
		Passives = {"Shell Share", "Water Splash"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.SeaTurtle.Idle;
			Walk = PetAnimations.SeaTurtle.Walk;
			Flip = PetAnimations.SeaTurtle.Flip;
			Splash = PetAnimations.SeaTurtle.Splash;
		};
		States = {};
	};
	Seal = {
		Description = "Seal the Deal: When selling pets, has a small chance to get the pet back as its egg equivalent";
		Actions = {};
		Model = var6:FindFirstChild("Seal");
		DefaultHunger = 17000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://70977930937021";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 6;
		SellPrice = 880000;
		Rarity = "Rare";
		Passives = {"Seal the Deal"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Seal.Idle;
			Walk = PetAnimations.Seal.Walk;
		};
		States = {};
	};
	Orangutan = {
		Description = "Helping Hands: When crafting, each material has a chance for it not to be consumed";
		Actions = {};
		Model = var6:FindFirstChild("Orangutan");
		DefaultHunger = 55000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://91252752916705";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 6;
		SellPrice = 880000;
		Rarity = "Rare";
		Passives = {"Helping Hands"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Orangutan.Idle;
			Walk = PetAnimations.Orangutan.Walk;
		};
		States = {};
	};
	Peacock = {
		Description = "Utter Beauty: Occasionally fans its feathers and all nearby pets will advance ability cooldowns";
		Actions = {};
		Model = var6:FindFirstChild("Peacock");
		DefaultHunger = 19000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://79434662175672";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 3300000;
		Rarity = "Legendary";
		Passives = {"Utter Beauty"};
		YHeightScaler = 0.8;
		Animations = {
			Idle = PetAnimations.Peacock.Idle;
			Walk = PetAnimations.Peacock.Walk;
			Fan = PetAnimations.Peacock.Fan;
		};
		States = {};
	};
	Capybara = {
		Description = "Chill Zone: Nearby pets' hunger will not go down and they will gain additional xp per second";
		Actions = {};
		Model = var6:FindFirstChild("Capybara");
		DefaultHunger = 30000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://109096250560950";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 5;
		SellPrice = 3300000;
		Rarity = "Legendary";
		Passives = {"Chill Zone"};
		YHeightScaler = 1.5;
		Animations = {
			Idle = PetAnimations.Capybara.Idle;
			Walk = PetAnimations.Capybara.Walk;
		};
	};
	["Scarlet Macaw"] = {
		Description = "Verdant Bird: Occasionally has a chance to mutate nearby fruits Verdant";
		Actions = {};
		Model = var6:FindFirstChild("Scarlet Macaw");
		DefaultHunger = 12000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://103592675269053";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 7;
		SellPrice = 3300000;
		Rarity = "Legendary";
		Passives = {"Verdant Bird", "Movement Variation"};
		YHeightScaler = 0.75;
		Animations = {
			Idle = PetAnimations.ScarletMacaw.Idle;
			Walk = PetAnimations.ScarletMacaw.Walk;
			Fly = PetAnimations.ScarletMacaw.Fly;
			FlyUp = PetAnimations.ScarletMacaw.FlyUp;
			FlyDown = PetAnimations.ScarletMacaw.FlyDown;
		};
	};
	Ostrich = {
		Description = "Eggsperience: Grants pets hatched from eggs an age bonus";
		Actions = {};
		Model = var6:FindFirstChild("Ostrich");
		DefaultHunger = 20000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://85113894132517";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8.5;
		SellPrice = 4400000;
		Rarity = "Legendary";
		Passives = {"Eggsperience"};
		YHeightScaler = 2.4;
		Animations = {
			Idle = PetAnimations.Ostrich.Idle;
			Walk = PetAnimations.Ostrich.Walk;
		};
	};
	["Mimic Octopus"] = {
		Description = "Mimicry: Mimics and copies an ability from another pet and peforms its ability";
		Actions = {};
		Model = var6:FindFirstChild("Mimic Octopus");
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://118831959038511";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 9;
		SellPrice = 10000000;
		Rarity = "Mythical";
		Passives = {"Mimicry"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.MimicOctopus.Idle;
			Walk = PetAnimations.MimicOctopus.Walk;
			Mimicry = PetAnimations.MimicOctopus.Mimicry;
		};
		States = {};
	};
	Meerkat = {
		Description = "Lookout: Occasionally goes to another pet and does a lookout for it. That pet advances cooldown. Has a chance chance to do it again after each lookout.";
		Actions = {};
		Model = var6:FindFirstChild("Meerkat");
		DefaultHunger = 22000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://111346621796974";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 9;
		SellPrice = 1100000;
		Rarity = "Legendary";
		Passives = {"Lookout"};
		YHeightScaler = 1;
		Animations = {
			Idle = PetAnimations.Meerkat.Idle;
			Walk = PetAnimations.Meerkat.Walk;
			Stand = PetAnimations.Meerkat.Stand;
		};
	};
	["Sand Snake"] = {
		Description = "Coiled Commerce: Buying from the seed/gear shop has a small chance to duplicate the bought item!";
		Actions = {};
		Model = var6:FindFirstChild("Sand Snake");
		DefaultHunger = 28000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://110203289397199";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 6;
		SellPrice = 1100000;
		Rarity = "Legendary";
		Passives = {"Coiled Commerce"};
		YHeightScaler = 0.1;
		Animations = {
			Idle = PetAnimations.Snake.Idle;
			Walk = PetAnimations.Snake.Walk;
		};
	};
	Axolotl = {
		Description = "Summer Regeneration: Summer type fruits have a chance to stay after collecting!";
		Actions = {};
		Model = var6:FindFirstChild("Axolotl");
		DefaultHunger = 22000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://115096754077953";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 5;
		SellPrice = 3300000;
		Rarity = "Mythical";
		Passives = {"Summer Regeneration"};
		YHeightScaler = 0.5;
		Animations = {
			Idle = PetAnimations.Axolotl.Idle;
			Walk = PetAnimations.Axolotl.Walk;
		};
	};
	["Hyacinth Macaw"] = {
		Description = "Wiltproof Bird: Occasionally has a chance to mutate nearby fruits Wiltproof";
		Actions = {};
		Model = var6:FindFirstChild("Hyacinth Macaw");
		DefaultHunger = 12000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://118586950763516";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 7;
		SellPrice = 4400000;
		Rarity = "Mythical";
		Passives = {"Cloudtouched Bird", "Movement Variation"};
		YHeightScaler = 0.75;
		Animations = {
			Idle = PetAnimations.ScarletMacaw.Idle;
			Walk = PetAnimations.ScarletMacaw.Walk;
			Fly = PetAnimations.ScarletMacaw.Fly;
			FlyUp = PetAnimations.ScarletMacaw.FlyUp;
			FlyDown = PetAnimations.ScarletMacaw.FlyDown;
		};
	};
	["Fennec Fox"] = {
		Description = "Sly: Occasionally goes to another player's random fruit, has a chance to copy 1 mutation from it and applies it to a random fruit you own.";
		Actions = {};
		Model = var6:FindFirstChild("Fennec Fox");
		DefaultHunger = 35000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://106568248173155";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 16;
		SellPrice = 7500000;
		Rarity = "Divine";
		Passives = {"Sly"};
		YHeightScaler = 1.1;
		Animations = {
			Idle = PetAnimations.FennecFox.Idle;
			Walk = PetAnimations.FennecFox.Walk;
			Steal = PetAnimations.FennecFox.Steal;
		};
	};
	Hamster = {
		Description = "Hamster Wheel: Occasionally runs in a hamster wheel and grants increased crafting speed for a duration";
		Actions = {};
		Model = var6:FindFirstChild("Hamster");
		DefaultHunger = 15000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://95041454621458";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 3300000;
		Rarity = "Mythical";
		Passives = {"Hamster Wheel"};
		YHeightScaler = 0.5;
		Animations = {
			Idle = PetAnimations.Hamster.Idle;
			Walk = PetAnimations.Hamster.Walk;
			Run = PetAnimations.Hamster.Run;
		};
	};
	["Bald Eagle"] = {
		Description = "Wings of Freedom: Every 7:04m, takes flight and spreads its wings. All eggs advanced their hatch time by 70.4s. There's a 7.04% chance for the effect to be multiplied";
		Actions = {};
		Model = var6:FindFirstChild("Bald Eagle");
		DefaultHunger = 15000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://100494018595907";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 5000000;
		Rarity = "Legendary";
		Passives = {"Wings of Freedom", "Movement Variation"};
		YHeightScaler = 2;
		Animations = {
			Idle = PetAnimations.Eagle.Idle;
			Walk = PetAnimations.Eagle.Walk;
			Fly = PetAnimations.Eagle.Fly;
			FlyUp = PetAnimations.Eagle.FlyUp;
			FlyDown = PetAnimations.Eagle.FlyDown;
			Spin = PetAnimations.Eagle.Spin;
		};
	};
	Raptor = {
		Description = "Clever Claws: Small chance fruit gets Amber mutation after collecting! & Raptor Dance: Player has increased movement speed";
		Actions = {};
		Model = var6:FindFirstChild("Raptor");
		DefaultHunger = 40000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		TwoHanded = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://133649762905181";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 12;
		SellPrice = 5000000;
		Rarity = "Legendary";
		Passives = {"Clever Claws", "Raptor Dance"};
		YHeightScaler = 0;
		Animations = {
			Idle = PetAnimations.Raptor.Idle;
			Walk = PetAnimations.Raptor.Walk;
		};
	};
	Stegosaurus = {
		Description = "Prehistoric Doubling: Small chance to duplicate harvested fruit & Prehistoric Harvester: Increased chance to duplicate harvested prehistoric type plant";
		Actions = {};
		Model = var6:FindFirstChild("Stegosaurus");
		DefaultHunger = 40000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		TwoHanded = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://115750504063562";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 5000000;
		Rarity = "Legendary";
		Passives = {"Prehistoric Doubling", "Prehistoric Harvester"};
		YHeightScaler = 0;
		Animations = {
			Idle = PetAnimations.Stegosaurus.Idle;
			Walk = PetAnimations.Stegosaurus.Walk;
		};
	};
	Triceratops = {
		Description = "Tri-Horn: Rams into random plants and advances their growth";
		Actions = {};
		Model = var6:FindFirstChild("Triceratops");
		DefaultHunger = 40000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		TwoHanded = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://133031079193526";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 5000000;
		Rarity = "Legendary";
		Passives = {"Tri-Horn"};
		YHeightScaler = 0;
		Animations = {
			Idle = PetAnimations.Triceratops.Idle;
			Walk = PetAnimations.Triceratops.Walk;
			Run = PetAnimations.Triceratops.Run;
			Ram = PetAnimations.Triceratops.Ram;
		};
	};
	Pterodactyl = {
		Description = "Sky Reptile: Occasionally applies Windstruck mutation to multiple nearby fruits! & Air Time: Player has increased jump height";
		Actions = {};
		Model = var6:FindFirstChild("Pterodactyl");
		DefaultHunger = 40000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		TwoHanded = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://132325249273328";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 10;
		SellPrice = 5000000;
		Rarity = "Legendary";
		Passives = {"Sky Reptile", "Air Time", "Movement Variation"};
		YHeightScaler = 1;
		Animations = {
			Idle = PetAnimations.Pterodactyl.Idle;
			Walk = PetAnimations.Pterodactyl.Walk;
			Flap = PetAnimations.Pterodactyl.Flap;
			Fly = PetAnimations.Pterodactyl.Fly;
			FlyUp = PetAnimations.Pterodactyl.FlyUp;
			FlyDown = PetAnimations.Pterodactyl.FlyDown;
		};
	};
	Brontosaurus = {
		Description = "Giant Incubator: Pets hatched from eggs have higher base weight";
		Actions = {};
		Model = var6:FindFirstChild("Brontosaurus");
		DefaultHunger = 80000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		TwoHanded = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://138431192706334";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 5;
		SellPrice = 20000000;
		Rarity = "Mythical";
		Passives = {"Giant Incubator"};
		YHeightScaler = 0;
		Animations = {
			Idle = PetAnimations.Brontosaurus.Idle;
			Walk = PetAnimations.Brontosaurus.Walk;
		};
	};
	["T-Rex"] = {
		Description = "Apex Predator: Occasionally eats a random mutation from a fruit in your garden then roars and applies that mutation to other fruits in your garden.";
		Actions = {};
		Model = var6:FindFirstChild("T-Rex");
		DefaultHunger = 60000;
		WeldOffset = CFrame.Angles(0, 0, 0);
		ToolWeldOffset = true;
		TwoHanded = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://72024850228702";
		HungerFruitMultipliers = {};
		MovementType = "Grounded";
		MovementSpeed = 8;
		SellPrice = 40000000;
		Rarity = "Divine";
		Passives = {"Apex Predator"};
		YHeightScaler = 0.05;
		Animations = {
			Idle = PetAnimations.Trex.Idle;
			Walk = PetAnimations.Trex.Walk;
			Eat = PetAnimations.Trex.Eat;
			Roar = PetAnimations.Trex.Roar;
		};
	};
	Firefly = {
		Description = "Lightning Bug: Occasionally strikes a random nearby fruit, with a small chance of turning it Shocked";
		Actions = {};
		Model = var6:FindFirstChild("Firefly");
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://131310748087635";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 10;
		SellPrice = 3300000;
		Rarity = "Mythical";
		Passives = {"Lightning Bug"};
		YHeightScaler = 0.5;
		Animations = {
			Idle = PetAnimations.Firefly.Idle;
			Walk = PetAnimations.Firefly.Walk;
		};
	};
	["Red Dragon"] = {
		Description = "Scorched Soil: Occasionally sets a random nearby fruit ablaze, turning it into Burnt";
		Actions = {};
		Model = var6:FindFirstChild("Red Dragon");
		DefaultHunger = 10000;
		WeldOffset = CFrame.Angles(0, (-math.pi/2), 0);
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.004;
		Icon = "rbxassetid://140223014467344";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 10;
		SellPrice = 100000;
		Rarity = "Common";
		Passives = {"Scorched Soil"};
		YHeightScaler = 0.2;
		Animations = {};
	};
	["Golden Bee"] = {
		Description = "Pollinator: Occasionally pollinates fruit & Golden Harvest: Harvested fruit has a chance to turn to gold";
		Actions = {};
		Model = var6:FindFirstChild("Bee");
		Variant = "Golden Bee";
		DefaultHunger = 25000;
		WeldOffset = CFrame.Angles(0, (math.pi/2), (-math.pi));
		ToolWeldOffset = true;
		ModelScalePerLevel = 0.005;
		Icon = "rbxassetid://125658111834879";
		HungerFruitMultipliers = {};
		MovementType = "Flight";
		MovementSpeed = 9;
		SellPrice = 1000000;
		Rarity = "Mythical";
		Passives = {"Pollinator", "Golden Harvest"};
		YHeightScaler = 0.03;
		Animations = {
			Idle = PetAnimations.Bee.Idle;
			Walk = PetAnimations.Bee.Walk;
			Pollinate = PetAnimations.Bee.Pollinate;
		};
	};
}
for i, v in module do
	if not v.Model and RunService:IsServer() then
		warn(i, "has no attached model defaulting to Dog model")
		v.Model = var6:FindFirstChild("Dog")
	end
	if v.Model and v.Model.Name ~= i then
		local clone = v.Model:Clone()
		clone.Name = i
		clone.Parent = var6
	end
	clone = v.YHeightScaler
	local var254 = clone
	if not var254 then
		var254 = 0
	end
	v.YHeightScaler = var254
	var254 = v.States
	local var255 = var254
	if not var255 then
		var255 = {}
	end
	v.States = var255
end
return module
