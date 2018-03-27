--处理器基类
--@author jianghong

local BaseProcessor = class("BaseProcessor",Cls.baseClass)

function BaseProcessor:ctor()
    BaseProcessor.super.ctor(self)
end

function BaseProcessor:delete()
    BaseProcessor.super.delete(self)
end

return BaseProcessor
