--定时器相关
--@author jianghong

local Timer = Class("Timer",Cls.BaseClass)

function Timer:create()
    Timer.super.create(self)
end

function Timer:delete()
    Timer.super.delete(self)
end

return Timer
