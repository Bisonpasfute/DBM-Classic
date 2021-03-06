local L = DBM_GUI_Translations

local extraFeaturesPanel	= DBM_GUI_Frame:CreateNewPanel(L.Panel_ExtraFeatures, "option")

local chatAlertsArea		= extraFeaturesPanel:CreateArea(L.Area_ChatAlerts, nil, 100)
chatAlertsArea:CreateCheckButton(L.WorldBossAlert, true, nil, "WorldBossAlert")
chatAlertsArea:CreateCheckButton(L.WorldBuffAlert, true, nil, "WorldBuffAlert")

local soundAlertsArea		= extraFeaturesPanel:CreateArea(L.Area_SoundAlerts, nil, 100)
soundAlertsArea:CreateCheckButton(L.LFDEnhance, true, nil, "LFDEnhance")
soundAlertsArea:CreateCheckButton(L.WorldBossNearAlert, true, nil, "WorldBossNearAlert")
soundAlertsArea:CreateCheckButton(L.RLReadyCheckSound, true, nil, "RLReadyCheckSound")
soundAlertsArea:CreateCheckButton(L.AFKHealthWarning, true, nil, "AFKHealthWarning")

local generaltimeroptions	= extraFeaturesPanel:CreateArea(L.TimerGeneral, nil, 105)
generaltimeroptions:CreateCheckButton(L.SKT_Enabled, true, nil, "AlwaysShowSpeedKillTimer2")
generaltimeroptions:CreateCheckButton(L.ShowRespawn, true, nil, "ShowRespawn")
generaltimeroptions:CreateCheckButton(L.ShowQueuePop, true, nil, "ShowQueuePop")

local bossLoggingArea		= extraFeaturesPanel:CreateArea(L.Area_AutoLogging, nil, 120)
bossLoggingArea:CreateCheckButton(L.AutologBosses, true, nil, "AutologBosses")
if Transcriptor then
	bossLoggingArea:CreateCheckButton(L.AdvancedAutologBosses, true, nil, "AdvancedAutologBosses")
end
bossLoggingArea:CreateCheckButton(L.RecordOnlyBosses, true, nil, "RecordOnlyBosses")
bossLoggingArea:CreateCheckButton(L.LogOnlyNonTrivial, true, nil, "LogOnlyNonTrivial")

--[[
local thirdPartyArea
if BigBrother and type(BigBrother.ConsumableCheck) == "function" then
	thirdPartyArea			= extraFeaturesPanel:CreateArea(L.Area_3rdParty, nil, 100)
	thirdPartyArea:CreateCheckButton(L.ShowBBOnCombatStart, true, nil, "ShowBigBrotherOnCombatStart")
	thirdPartyArea:CreateCheckButton(L.BigBrotherAnnounceToRaid, true, nil, "BigBrotherAnnounceToRaid")
end
]]--

local inviteArea			= extraFeaturesPanel:CreateArea(L.Area_Invite, nil, 100)
inviteArea:CreateCheckButton(L.AutoAcceptFriendInvite, true, nil, "AutoAcceptFriendInvite")
inviteArea:CreateCheckButton(L.AutoAcceptGuildInvite, true, nil, "AutoAcceptGuildInvite")

local advancedArea	= extraFeaturesPanel:CreateArea(L.Area_Advanced, nil, 100)
advancedArea:CreateCheckButton(L.FakeBW, true, nil, "FakeBWVersion")
advancedArea:CreateCheckButton(L.AITimer, true, nil, "AITimer")

chatAlertsArea:AutoSetDimension()
soundAlertsArea:AutoSetDimension()
generaltimeroptions:AutoSetDimension()
bossLoggingArea:AutoSetDimension()
--[[
if thirdPartyArea then
	thirdPartyArea:AutoSetDimension()
end
]]--
inviteArea:AutoSetDimension()
advancedArea:AutoSetDimension()
extraFeaturesPanel:SetMyOwnHeight()
