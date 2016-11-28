#The Crystal Gems

crystal_gems = {
	garnet: {
		name: "Garnet",
		powers: [
			"future vision",
			"super gloves"
			],
		fusion: true,
		fusion_members: [
			"ruby",
			"sapphire",
			],
	},
	amethyst: {
		name: "Amethyst",
		powers: [
			"magic whip",
			"shape shifting"
			],
		fusion: false,
		fusion_members: [],
	},
	pearl: {
		name: "Pearl",
		powers: [
			"magic spear",
			"sword fighting"
			],
		fusion: false,
		fusion_members: [],
	},
}

puts crystal_gems

puts crystal_gems[:pearl][:name] + "'s powers are: "
puts crystal_gems[:pearl][:powers]

puts crystal_gems[:amethyst][:name] + "'s most important power is: "
puts crystal_gems[:amethyst][:powers][0]

puts crystal_gems[:garnet][:name] + " is a fusion of " + crystal_gems[:garnet][:fusion_members][0] + " and " + crystal_gems[:garnet][:fusion_members][1]