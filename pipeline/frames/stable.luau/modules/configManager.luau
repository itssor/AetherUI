local a={config={},storagePrefix='CascadeConfig_',autoSave=true,saveDebounce=nil
,saveDebounceTime=1}a.init=function(b)a.configName=b or'default'a.storageKey=a.
storagePrefix..a.configName a.load()return a end a.load=function()local b,c=
pcall(function()if not isfile then return nil end if not isfile(a.storageKey)
then return nil end local b=readfile(a.storageKey)return game:GetService
'HttpService':JSONDecode(b)end)if b and c then a.config=c print(
'[Cascade] Configuration loaded:',a.configName)else a.config={}print(
'[Cascade] No configuration found, using defaults:',a.configName)end return a.
config end a.save=function()local b,c=pcall(function()if not isfile or not
writefile then return false end local b=game:GetService'HttpService':JSONEncode(
a.config)writefile(a.storageKey,b)return true end)if b then print(
'[Cascade] Configuration saved:',a.configName)else warn(
'[Cascade] Failed to save configuration:',c)end return b end a.saveDebounced=
function()if not a.autoSave then return end if a.saveDebounce then task.cancel(a
.saveDebounce)end a.saveDebounce=task.delay(a.saveDebounceTime,function()a.save(
)end)end a.get=function(b,c)return a.config[b]~=nil and a.config[b]or c end a.
set=function(b,c,d)a.config[b]=c if d~=false then a.saveDebounced()end end a.
getAll=function()return a.config end a.setMultiple=function(b)for c,d in pairs(b
)do a.config[c]=d end a.saveDebounced()end a.delete=function(b)a.config[b]=nil a
.saveDebounced()end a.clear=function()a.config={}a.save()end a.setAutoSave=
function(b)a.autoSave=b end a.forceSave=function()if a.saveDebounce then task.
cancel(a.saveDebounce)a.saveDebounce=nil end a.save()end a.watch=function(b,c)
local d,e={},{__index=function(d,e)return a.config[b][e]end,__newindex=function(
d,e,f)a.config[b][e]=f c(a.config[b])a.saveDebounced()end}return setmetatable(d,
e)end a.bindValue=function(b,c)if a.config[b]==nil then a.config[b]=c end local
d={Value=a.config[b],Connect=function(d,e)d._callback=e return{Disconnect=
function()d._callback=nil end}end,_set=function(d,e)if d.Value~=e then d.Value=e
a.config[b]=e if d._callback then d._callback(e)end a.saveDebounced()end end}
setmetatable(d,{__newindex=function(e,f,g)if f=='Value'then d:_set(g)else
rawset(d,f,g)end end,__index=function(e,f)return rawget(d,f)end})return d end
return a