function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 3345 then
queststatus = getPlayerStorageValue(cid,3345)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou 1 Abyss Hammer.")
doPlayerAddItem(cid,7414,1 )
setPlayerStorageValue(cid,3345,1)
else
doPlayerSendTextMessage(cid,22,"Voc� j� obteve a sua recompensa")
end
else
return 0
end
return 1
end 