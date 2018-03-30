--进入程序
package.path = package.path .. ';script/?.lua'
require("script.init")

--执行测试
package.path = package.path .. ';test/?.lua'
require("test.init")
