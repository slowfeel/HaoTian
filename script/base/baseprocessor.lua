--处理器基类
--@author jianghong

local BaseProcessor = Class("BaseProcessor",Cls.BaseClass)

function BaseProcessor:ctor()
    BaseProcessor.super.ctor(self)
    Ins.Log:info("processor","create a processor, name = %s",self.__cname)
end

function BaseProcessor:delete()
    BaseProcessor.super.delete(self)
    Ins.Log:info("processor","delete a processor, name = %s",self.__cname)
end

return BaseProcessor
