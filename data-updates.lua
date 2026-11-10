local utils = require("__hyperlanes-modpack__/utils")

require("reworks.progression.t01-nauvis")
require("reworks.progression.t02-muluna")
require("reworks.progression.t03-fulgora")
require("reworks.progression.t03-gleba")
require("reworks.progression.t03-vulcanus")
require("reworks.progression.t04-cerys")
require("reworks.progression.t04-muluna2")
require("reworks.progression.t05-arig")
require("reworks.progression.t05-muria")
require("reworks.progression.t05-rubia")
require("reworks.progression.t06-hyarion")
require("reworks.progression.t06-moshine")
require("reworks.progression.t07-aquilo")
require("reworks.progression.t07-maraxsis")
require("reworks.progression.t08-paracelsin")
require("reworks.progression.t08-tellus")
require("reworks.progression.t08-vesta")
require("reworks.progression.t09-shattered-planet")
require("reworks.progression.t10-panglia")

require("reworks.technology-reworks")
require("reworks.quality-reworks")





-- Reorder science packs to be reflective of progression
for index, science_name in ipairs(utils.all_sciences) do
    data.raw["item"][science_name].order = utils.science_order[science_name]
end