--ui工厂
--@author jianghong

local UIFactory = Class("UIFactory",Cls.BaseFactory)

function UIFactory:create()
    UIFactory.super.create(self)
end

function UIFactory:delete()
    UIFactory.super.delete(self)
end

return UIFactory
