--数据基类
--@author jianghong

local BaseData = class("BaseData",Cls.baseClass)

function BaseData:ctor()
    BaseData.super.ctor(self)
end

function BaseData:delete()
    BaseData.super.delete(self)
end

return BaseData
