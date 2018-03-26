--崩溃数据手机相关
--@author jianghong

local dump = class("dump",Cls.baseClass)

function dump:ctor()
    dump.super.ctor(self)
end

function dump:delete()
    dump.super.delete(self)
end

function dump:assert(state,...)
end

return dump
