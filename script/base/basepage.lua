--页面基类
--@author jianghong

local BasePage = class("BasePage",Cls.baseClass)

function BasePage:ctor()
    BasePage.super.ctor(self)
end

function BasePage:delete()
    BasePage.super.delete(self)
end

return BasePage
