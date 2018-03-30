--页面工厂
--@author jianghong

local PageFactory = Class("PageFactory",Cls.BaseFactory)

function PageFactory:create()
    PageFactory.super.create(self)
end

function PageFactory:delete()
    PageFactory.super.delete(self)
end

return PageFactory
