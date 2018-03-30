--处理器工厂
--@author jianghong

local ProcessorFactory = Class("ProcessorFactory",Cls.BaseFactory)

function ProcessorFactory:create()
    ProcessorFactory.super.create(self)
end

function ProcessorFactory:delete()
    ProcessorFactory.super.delete(self)
end

return ProcessorFactory
