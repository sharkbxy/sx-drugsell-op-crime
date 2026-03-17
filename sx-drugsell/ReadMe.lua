--[[
SX DrugSell is a lightweight system that allows organizations to passively sell
drugs through a shared stash instead of manually selling to NPCs or both lol. Members of an
organization can deposit drugs into their designated stash, and the script
automatically converts those drugs into cash over time, creating a steady stream
of income.

Each stash is locked to a specific organization using the OP-Crime org system
(e.g., org_4), ensuring only the correct members can access it. At a configurable
interval, the script removes one drug item from the stash and adds its cash value
back into the stash. This encourages organizations to maintain supply rather than
dumping large amounts of drugs at once.

The system integrates with QBCore, ox_inventory, ox_lib, and OP-Crime,
making it easy to drop into servers. It also supports police raid
functionality, allowing law enforcement to seize drugs and cash from stashes.

FEATURES

• Passive drug selling through organization stashes
• OP-Crime organization access control
• Configurable drug prices and sell intervals
• ox_inventory stash integration (50 slots / 100kg by default)
• Police raid support for law enforcement roleplay
• Lightweight and performance friendly

POLICE RAID REQUIREMENT

Police raids require a "search_warrant" item. Officers must possess this item
in their inventory before they can execute a stash raid. Once a raid begins,
the warrant is consumed and the stash contents (drugs and money) are seized.


Paste this into your ox_inventory.

['search_warrant'] = {
    label = 'Search Warrant',
    weight = 0,
    stack = false,
    close = true,
    description = 'Legal authorization to raid a criminal stash'
},

]] 