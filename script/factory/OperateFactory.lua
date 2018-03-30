--操作工厂
--@author jianghong

local OperateFactory = Class("OperateFactory",Cls.BaseFactory)

function OperateFactory:create()
    OperateFactory.super.create(self)
end

function OperateFactory:delete()
    OperateFactory.super.delete(self)
end

return OperateFactory
