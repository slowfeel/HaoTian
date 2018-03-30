--模块工厂
--@author jianghong

local ModuleFactory = Class("ModuleFactory",Cls.BaseFactory)

function ModuleFactory:create()
    ModuleFactory.super.create(self)
end

function ModuleFactory:delete()
    ModuleFactory.super.delete(self)
end

return ModuleFactory
