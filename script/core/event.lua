--事件相关
--@author jianghong

local Event = Class("Event",Cls.BaseClass)

function Event:create()
    Event.super.create(self)
end

function Event:delete()
    Event.super.delete(self)
end

return Event
