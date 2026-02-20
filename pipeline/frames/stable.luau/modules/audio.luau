local a={sounds={ButtonClick=nil,ButtonHover=nil,Notification=nil,
NotificationDismiss=nil,SwitchToggle=nil,SliderChange=nil},instancePool={},
enabled=true}a.init=function()game:GetService'SoundService'end a.Register=
function(b,c)if a.sounds[b]~=nil then a.sounds[b]=c end end a.Unregister=
function(b)if a.sounds[b]~=nil then a.sounds[b]=nil end end a.SetEnabled=
function(b)a.enabled=b end a.IsEnabled=function()return a.enabled end a.Play=
function(b,c)if not a.enabled then return end local d=a.sounds[b]if not d or d==
''then return end local e,f=(game:GetService'SoundService')if a.instancePool[b]
then f=a.instancePool[b]else f=Instance.new'Sound'f.Name='CascadeAudio_'..b f.
SoundId=d f.Parent=e a.instancePool[b]=f end if c then f.Volume=c else f.Volume=
0.5 end if f.IsPlaying then f:Stop()end f.TimePosition=0 f:Play()end a.
PlayOneShot=function(b,c)if not a.enabled or not b or b==''then return end local
d,e=game:GetService'SoundService',Instance.new'Sound'e.Name=
'CascadeAudio_OneShot'e.SoundId=b e.Volume=c or 0.5 e.Parent=d e.Ended:Once(
function()task.delay(0.1,function()if e and e.Parent then e:Destroy()end end)end
)e:Play()end a.GetSound=function(b)return a.sounds[b]end a.GetAllSounds=function
()return a.sounds end a.Preload=function()local b=game:GetService'SoundService'
for c,d in pairs(a.sounds)do if d and d~=''then if not a.instancePool[c]then
local e=Instance.new'Sound'e.Name='CascadeAudio_'..c e.SoundId=d e.Parent=b a.
instancePool[c]=e end pcall(function()a.instancePool[c]:Preload()end)end end end
a.Cleanup=function()for b,c in pairs(a.instancePool)do if c and c.Parent then c:
Stop()c:Destroy()end end a.instancePool={}end return a