--定时器相关
--@author jianghong

local timer = class("timer",Cls.baseClass)

function timer:ctor()
    timer.super.ctor(self)
end

function timer:delete()
    timer.super.delete(self)
end

return timer
