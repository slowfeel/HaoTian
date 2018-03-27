--崩溃数据手机相关
--@author jianghong

local Debug = class("Debug",Cls.baseClass)

function Debug:ctor()
    Debug.super.ctor(self)
end

function Debug:delete()
    Debug.super.delete(self)
end

function Debug:assert(state,...)
end

return Debug
