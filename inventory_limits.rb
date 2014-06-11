#============================================================================
#                            *Syn's Maximum Item Limits*
#----------------------------------------------------------------------------
# Written by Synthesize
# Version 1.00
# August 15, 2007
#============================================================================
#----------------------------------------------------------------------------
# Compatability
# Rewrites:
#   Game_Party::gain_item
#   Game_Party::gain_weapon
#   Game_Party::gain_armor
#----------------------------------------------------------------------------
# Begin Customization Section
#----------------------------------------------------------------------------
  # Format = {item_id => maximum amount}
  Max_item = {32 => 100}
  # Default Max Item Storage
  Max_item.default = 100
  # Format = {weapon_id => maximum amount}
  Max_weapon = {}
  # Maximum Weapon storage
  Max_weapon.default = 99
  # Format = {armor_id => maximum amount}
  Max_armor = {1 => 1}
  # Maximum storage space
  Max_armor.default = 99
#----------------------------------------------------------------------------
# Begin Game_Party rewrite
#----------------------------------------------------------------------------
class Game_Party
  #--------------------------------------------------------------------------
  # Rewrite gain_item
  #--------------------------------------------------------------------------
  def gain_item(item_id,n)
    if item_id > 0
      @items[item_id] = [[item_number(item_id) + n, 0].max, Max_item[item_id]].min
    end
  end
  #--------------------------------------------------------------------------
  # Rewrite gain_weapon
  #--------------------------------------------------------------------------
  def gain_weapon(weapon_id,n)
    if weapon_id > 0
      @weapons[weapon_id] = [[weapon_number(weapon_id) + n, 0].max, Max_weapon[weapon_id]].min
    end
  end
  #--------------------------------------------------------------------------
  # Rewrite gain_armor
  #--------------------------------------------------------------------------
  def gain_armor(armor_id,n)
    if armor_id > 0
      @armor[armor_id] = [[armor_number(armor_id) + n, 0].max, Max_armor[armor_id]].min
    end
  end
end
#============================================================================
# Written by Synthesize
# Version 1.00
# August 15, 2007
#----------------------------------------------------------------------------
#                   *Syns Maximum Item Limits*
#============================================================================
    