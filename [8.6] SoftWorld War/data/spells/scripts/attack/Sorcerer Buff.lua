local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition, CONDITION_PARAM_SUBID, 1)
setConditionParam(condition, CONDITION_PARAM_TICKS, 90000)
setConditionParam(condition, CONDITION_PARAM_STAT_MAGICPOINTS, 10)
setCombatCondition(combat, condition)

local condition2 = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition2, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition2, CONDITION_PARAM_SUBID, 2)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition2, CONDITION_PARAM_MANAGAIN, 20)
setConditionParam(condition2, CONDITION_PARAM_MANATICKS, 90000)
setConditionParam(condition2, CONDITION_PARAM_HEALTHGAIN, 10)
setConditionParam(condition2, CONDITION_PARAM_HEALTHTICKS, 1500)
setCombatCondition(combat, condition2)

local condition3 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition3, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition3, CONDITION_PARAM_SUBID, 3)
setConditionParam(condition3, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition3, CONDITION_PARAM_STAT_MAXHEALTHPERCENT, 103)
setConditionParam(condition3, CONDITION_PARAM_STAT_MAXMANAPERCENT, 108)
setCombatCondition(combat, condition3)

local condition4 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition4, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition4, CONDITION_PARAM_SUBID, 4)
setConditionParam(condition4, CONDITION_PARAM_TICKS, 90000)
setConditionParam(condition4, CONDITION_PARAM_STAT_MAGICPOINTS, 5)
setCombatCondition(combat, condition4)

local condition5 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition5, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition5, CONDITION_PARAM_SUBID, 5)
setConditionParam(condition5, CONDITION_PARAM_TICKS, 90000)
setConditionParam(condition5, CONDITION_PARAM_SKILL_SHIELDPERCENT, 110)
setCombatCondition(combat, condition5)

local condition6 = createConditionObject(CONDITION_LIGHT)
setConditionParam(condition6, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition6, CONDITION_PARAM_SUBID, 6)
setConditionParam(condition6, CONDITION_PARAM_TICKS, 90000)
setConditionParam(condition6, CONDITION_PARAM_LIGHT_LEVEL, 6)
setConditionParam(condition6, CONDITION_PARAM_LIGHT_COLOR, 17018)
setCombatCondition(combat, condition6)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end