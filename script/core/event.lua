--事件相关
--@author jianghong

local Event = class("Event",Cls.baseClass)

function Event:ctor()
    Event.super.ctor(self)
end

function Event:delete()
    Event.super.delete(self)
end

return Event
