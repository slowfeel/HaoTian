--模块基类
--@author jianghong

local BaseModule = class("BaseModule",Cls.baseClass)

function BaseModule:ctor()
    BaseModule.super.ctor(self)
end

function BaseModule:delete()
    BaseModule.super.delete(self)
end

return BaseModule
