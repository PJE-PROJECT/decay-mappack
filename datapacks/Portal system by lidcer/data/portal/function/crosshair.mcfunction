title @s times 0 5 0

execute unless entity @e[tag=sbpg.portal_first,limit=1] unless entity @e[tag=sbpg.portal_second,limit=1] run title @s[tag=gun_hold] title [{"text":"\ue004","font":"ascent","type":"text"}]
execute if entity @e[tag=sbpg.portal_first,limit=1] unless entity @e[tag=sbpg.portal_second,limit=1] run title @s[tag=gun_hold] title [{"text":"\ue005","font":"ascent","type":"text"}]
execute unless entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run title @s[tag=gun_hold] title [{"text":"\ue006","font":"ascent","type":"text"}]
execute if entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run title @s[tag=gun_hold] title [{"text":"\ue007","font":"ascent","type":"text"}]

execute unless entity @e[tag=sbpg.portal_first,limit=1] unless entity @e[tag=sbpg.portal_second,limit=1] run title @s[tag=itempicker_activated] title [{"text":"\ue004","font":"ascent","type":"text"}]
execute if entity @e[tag=sbpg.portal_first,limit=1] unless entity @e[tag=sbpg.portal_second,limit=1] run title @s[tag=itempicker_activated] title [{"text":"\ue005","font":"ascent","type":"text"}]
execute unless entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run title @s[tag=itempicker_activated] title [{"text":"\ue006","font":"ascent","type":"text"}]
execute if entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run title @s[tag=itempicker_activated] title [{"text":"\ue007","font":"ascent","type":"text"}]

#title @s[tag=gun_hold] subtitle [{"text":" "}]