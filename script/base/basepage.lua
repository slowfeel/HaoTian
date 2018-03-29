--页面基类
--@author jianghong

local BasePage = Class("BasePage",Cls.BaseClass)

function BasePage:create()
    BasePage.super.create(self)
    Ins.Log:info("page","create a page, name = %s",self.__cname)
end

function BasePage:delete()
    BasePage.super.delete(self)
    Ins.Log:info("page","delete a page, name = %s",self.__cname)
end

return BasePage
