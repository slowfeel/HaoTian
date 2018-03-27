--定时器相关
--@author jianghong

local Timer = class("Timer",Cls.baseClass)

function Timer:ctor()
    Timer.super.ctor(self)
end

function Timer:delete()
    Timer.super.delete(self)
end

return Timer
