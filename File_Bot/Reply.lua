local function Reply(msg)
local text = msg.content_.text_
if not database:get(bot_id..'Reply:Status'..msg.chat_id_) then

if text == 'تفعيل ردود البوت' and Manager(msg) then
database:del(bot_id..'Reply:Status'..msg.chat_id_)
send(msg.chat_id_, msg.id_,'℘︙تم تفعيل ردود البوت')
return false
end

if text == 'تعطيل ردود البوت' and Manager(msg) then
database:set(bot_id..'Reply:Status'..msg.chat_id_,true)
send(msg.chat_id_, msg.id_,'℘︙تم تعطيل ردود البوت')
return false
end

end
return {
Dragon = Reply
}
