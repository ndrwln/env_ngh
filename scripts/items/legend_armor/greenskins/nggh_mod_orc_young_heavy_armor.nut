this.nggh_mod_orc_young_heavy_armor <- ::inherit("scripts/items/legend_armor/legend_armor", {
	m = {},
	function create()
	{
		this.legend_armor.create();
		this.m.Variants = [4];
		this.m.Variant = 4;
		this.updateVariant();
		this.m.ID = "armor.body.orc_young_heavy_armor";
		this.m.Name = "Metal Plated Hide Armor";
		this.m.Description = "A makeshift hide armor with metal plate to offer better protection.";
		this.m.SlotType = ::Const.ItemSlot.Body;
		this.m.ShowOnCharacter = true;
		this.m.ImpactSound = ::Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.m.ImpactSound;
		this.m.Condition = 120;
		this.m.ConditionMax = 120;
		this.m.StaminaModifier = -15;
	}

	function updateVariant()
	{
		this.m.Sprite = "bust_orc_01_armor_04";
		this.m.SpriteDamaged = "bust_orc_01_armor_04_damaged";
		this.m.SpriteCorpse = "bust_orc_01_armor_04_dead";
		this.m.Icon = "armor/icon_orc_01_armor_04.png";
		this.m.IconLarge = "armor/inventory_goblin_body_armor.png";
	}

	function onEquip()
	{
		this.legend_armor.onEquip();
		this.m.IsDroppedAsLoot = ::Nggh_MagicConcept.isHexeOrigin();
	}

});

