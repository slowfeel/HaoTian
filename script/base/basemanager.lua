--管理器基类
--@author jianghong

local BaseManager = class("BaseManager",Cls.baseClass)

function BaseManager:ctor()
    BaseManager.super.ctor(self)
end

function BaseManager:delete()
    BaseManager.super.delete(self)
end


return BaseManager
