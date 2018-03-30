--条件工厂
--@author jianghong

local ConditionFactory = Class("ConditionFactory",Cls.BaseFactory)

function ConditionFactory:create()
    ConditionFactory.super.create(self)
end

function ConditionFactory:delete()
    ConditionFactory.super.delete(self)
end

return ConditionFactory
