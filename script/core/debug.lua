--崩溃数据手机相关
--@author jianghong

local Debug = Class("Debug",Cls.BaseClass)

function Debug:create()
    Debug.super.create(self)
end

function Debug:delete()
    Debug.super.delete(self)
end

function Debug:assert(state,...)
end

return Debug
