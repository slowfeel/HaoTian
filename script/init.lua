--初始化全局表
local G = _G
local function initGlobalTable(name)
    G[name] = {}
    setmetatable(G[name],{__index=function(t,key)
                              return t[key]
    end})
end

local function loadLuaFile(name)
    return require(name)
end


--初始化一个文件名索引表
initGlobalTable("Lnk")
--初始化一个定义表,用来放所有枚举
initGlobalTable("Def")
--初始化一个类表,用来放所有类
initGlobalTable("Cls")
--初始化一个配置表,用来放配置
initGlobalTable("Cfg")
--初始化一个工具表,用来放工具方法
initGlobalTable("Utl")
--初始化一个实例表,用来放所有的实例
initGlobalTable("Ins")

--初始化全局函数
loadLuaFile("global")

setmetatable(G,{__newIndex=function(t,k,v)
                    assert(false,"不可设置全局变量,请检查代码")
end})

Lnk = loadLuaFile("filelink")
Def = loadLuaFile("default")
