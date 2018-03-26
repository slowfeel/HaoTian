--事件相关
--@author jianghong

local event = class("event",Cls.baseClass)

function event:ctor()
    event.super.ctor(self)
end

function event:delete()
    event.super.delete(self)
end

return event
