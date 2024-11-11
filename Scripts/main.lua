---@diagnostic disable: missing-fields
---@type Mod_Config
local config = {
    LOG_LEVEL = "INFO", -- ALL TRACE DEBUG INFO WARN ERROR FATAL OFF
    -- MIN_LEVEL_OF_FATAL_ERROR = "WARN",
    -- FORCE_REAPPLY_ON_MOD_RESTART = true,
    -- OPTIONS_FILES = [[
    --     Scripts\examples\options_ex_simple.lua |
    --     Scripts\examples\options_ex_target.lua |
    --     Scripts\examples\options_ex_pre_post.lua |
    --     Scripts\examples\options_ex_array_struct_map.lua |
    --     Scripts\examples\options_ex_load.lua |
    --     Scripts\examples\options_ex_increase_creature_speed.lua |
    --     Scripts\examples\options_ex_logging.lua |
    --     ]],
    -- OPTIONS_FILES = [[options.lua]],
    OPTIONS_FILES = [[Scripts\test\test_options.lua]],
}

for k, v in pairs(config) do
    print("SetSharedVariable", k, v)
    ModRef:SetSharedVariable(k, v)
end
