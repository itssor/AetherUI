type Instance__DARKLUA_TYPE_a={Name:string?,Parent:Instance__DARKLUA_TYPE_a?,
Archivable:boolean?,ClassName:string?,Clone:((self:Instance__DARKLUA_TYPE_a)->
Instance__DARKLUA_TYPE_a)?,Destroy:((self:Instance__DARKLUA_TYPE_a)->())?,
FindFirstAncestor:((self:Instance__DARKLUA_TYPE_a,name:string)->
Instance__DARKLUA_TYPE_a?)?,FindFirstAncestorWhichIsA:((self:
Instance__DARKLUA_TYPE_a,className:string)->Instance__DARKLUA_TYPE_a?)?,
FindFirstAncestorOfClass:((self:Instance__DARKLUA_TYPE_a,className:string)->
Instance__DARKLUA_TYPE_a?)?,FindFirstChild:((self:Instance__DARKLUA_TYPE_a,name:
string,recursive:boolean?)->Instance__DARKLUA_TYPE_a?)?,FindFirstChildWhichIsA:(
(self:Instance__DARKLUA_TYPE_a,className:string,recursive:boolean?)->
Instance__DARKLUA_TYPE_a?)?,FindFirstChildOfClass:((self:
Instance__DARKLUA_TYPE_a,className:string,recursive:boolean?)->
Instance__DARKLUA_TYPE_a?)?,GetAttribute:((self:Instance__DARKLUA_TYPE_a,
attribute:string)->any)?,GetAttributes:((self:Instance__DARKLUA_TYPE_a)->{[
string]:any})?,GetChildren:((self:Instance__DARKLUA_TYPE_a)->{
Instance__DARKLUA_TYPE_a})?,GetDescendants:((self:Instance__DARKLUA_TYPE_a)->{
Instance__DARKLUA_TYPE_a})?,HasTag:((self:Instance__DARKLUA_TYPE_a,tag:string)->
boolean)?,IsA:((self:Instance__DARKLUA_TYPE_a,className:string)->boolean)?,
IsAncestorOf:((self:Instance__DARKLUA_TYPE_a,descendant:Instance__DARKLUA_TYPE_a
)->boolean)?,IsDescendantOf:((self:Instance__DARKLUA_TYPE_a,ancestor:
Instance__DARKLUA_TYPE_a)->boolean)?,WaitForChild:((self:
Instance__DARKLUA_TYPE_a,childName:string,timeOut:number?)->
Instance__DARKLUA_TYPE_a)?,AncestryChanged:((self:Instance__DARKLUA_TYPE_a,
handler:(child:Instance__DARKLUA_TYPE_a,parent:Instance__DARKLUA_TYPE_a?)->())->
RBXScriptConnection)?,AttributeChanged:((self:Instance__DARKLUA_TYPE_a,handler:(
attribute:string)->())->RBXScriptConnection)?,ChildAdded:((self:
Instance__DARKLUA_TYPE_a,handler:(child:Instance__DARKLUA_TYPE_a)->())->
RBXScriptConnection)?,ChildRemoved:((self:Instance__DARKLUA_TYPE_a,handler:(
child:Instance__DARKLUA_TYPE_a)->())->RBXScriptConnection)?,DescendantAdded:((
self:Instance__DARKLUA_TYPE_a,handler:(descendant:Instance__DARKLUA_TYPE_a)->()
)->RBXScriptConnection)?,DescendantRemoving:((self:Instance__DARKLUA_TYPE_a,
handler:(descendant:Instance__DARKLUA_TYPE_a)->())->RBXScriptConnection)?,
Destroying:((self:Instance__DARKLUA_TYPE_a,handler:()->())->RBXScriptConnection)
?,PropertyChanged:((self:Instance__DARKLUA_TYPE_a,property:string)->
RBXScriptConnection)?}type GuiBase2d__DARKLUA_TYPE_b=Instance__DARKLUA_TYPE_a&{
AutoLocalize:boolean?,RootLocalizationTable:LocalizationTable?,
SelectionBehaviorDown:Enum.SelectionBehavior?,SelectionBehaviorLeft:Enum.
SelectionBehavior?,SelectionBehaviorRight:Enum.SelectionBehavior?,
SelectionBehaviorUp:Enum.SelectionBehavior?,SelectionGroup:boolean?}type
LayerCollector__DARKLUA_TYPE_c=GuiBase2d__DARKLUA_TYPE_b&{Enabled:boolean?,
ResetOnSpawn:boolean?,ZIndexBehavior:Enum.ZIndexBehavior?}type
GuiObject__DARKLUA_TYPE_d=GuiBase2d__DARKLUA_TYPE_b&{AnchorPoint:Vector2?,
BackgroundColor3:Color3?,BackgroundTransparency:number?,BorderColor3:Color3?,
BorderMode:Enum.BorderMode?,BorderSizePixel:number?,ClipsDescendants:boolean?,
LayoutOrder:number?,Position:UDim2?,Rotation:number?,Selectable:boolean?,
SelectionImageObject:GuiObject__DARKLUA_TYPE_d?,Size:UDim2?,SizeConstraint:Enum.
SizeConstraint?,Visible:boolean?,ZIndex:number?,AutomaticSize:Enum.AutomaticSize
?}type ScreenGui__DARKLUA_TYPE_e=LayerCollector__DARKLUA_TYPE_c&{DisplayOrder:
number?,IgnoreGuiInset:boolean?,ScreenInsets:Enum.ScreenInsets?,
ClipToDeviceSafeArea:boolean?,SafeAreaCompatibility:Enum.SafeAreaCompatibility?}
type Frame__DARKLUA_TYPE_f=GuiObject__DARKLUA_TYPE_d&{Style:Enum.FrameStyle?}
type TextLabel__DARKLUA_TYPE_g=GuiObject__DARKLUA_TYPE_d&{FontFace:Font?,
LineHeight:number?,MaxVisibleGraphemes:number?,OpenTypeFeatures:string?,RichText
:boolean?,Text:string?,TextColor3:Color3?,TextDirection:Enum.TextDirection?,
TextScaled:boolean?,TextSize:number?,TextStrokeColor3:Color3?,
TextStrokeTransparency:number?,TextTransparency:number?,TextTruncate:Enum.
TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.TextXAlignment?,
TextYAlignment:Enum.TextYAlignment?}type TextBox__DARKLUA_TYPE_h=
GuiObject__DARKLUA_TYPE_d&{ClearTextOnFocus:boolean?,CursorPosition:number?,
MultiLine:boolean?,ShowNativeInput:boolean?,TextEditable:boolean?,ContentText:
string?,FontFace:Font?,LineHeight:number?,MaxVisibleGraphemes:number?,
OpenTypeFeatures:string?,OpenTypeFeaturesError:string?,PlaceholderColor3:Color3?
,PlaceholderText:string?,RichText:boolean?,Text:string?,TextBounds:Vector2?,
TextColor3:Color3?,TextDirection:Enum.TextDirection?,TextFits:boolean?,
TextScaled:boolean?,TextSize:number?,TextStrokeColor3:Color3?,
TextStrokeTransparency:number?,TextTransparency:number?,TextTruncate:Enum.
TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.TextXAlignment?,
TextYAlignment:Enum.TextYAlignment?,SelectionStart:number?,CaptureFocus:((self:
TextBox__DARKLUA_TYPE_h)->())?,IsFocused:((self:TextBox__DARKLUA_TYPE_h)->
boolean)?,ReleaseFocus:((self:TextBox__DARKLUA_TYPE_h,submitted:boolean?)->())?,
Focused:((self:TextBox__DARKLUA_TYPE_h,handler:()->())->RBXScriptConnection)?,
FocusLost:((self:TextBox__DARKLUA_TYPE_h,handler:(enterPressed:boolean,
inputThatCausedFocusLoss:InputObject)->())->RBXScriptConnection)?,
ReturnPressedFromOnScreenKeyboard:((self:TextBox__DARKLUA_TYPE_h,handler:()->()
)->RBXScriptConnection)?}type ImageLabel__DARKLUA_TYPE_i=
GuiObject__DARKLUA_TYPE_d&{Image:string?,ImageColor3:Color3?,ImageContent:string
?,ImageRectOffset:Vector2?,ImageRectSize:Vector2?,ImageTransparency:number?,
IsLoaded:boolean?,ResampleMode:Enum.ResamplerMode?,ScaleType:Enum.ScaleType?,
SliceCenter:Rect?,SliceScale:number?,TileSize:UDim2?}type
GuiButton__DARKLUA_TYPE_j=GuiObject__DARKLUA_TYPE_d&{AutoButtonColor:boolean?,
Modal:boolean?,Style:Enum.ButtonStyle?,HoverHapticEffect:HapticEffect?,
PressHapticEffect:HapticEffect?,Selected:boolean?,Activated:((self:
GuiButton__DARKLUA_TYPE_j,handler:(inputObject:InputObject,clickCount:number)->(
))->RBXScriptConnection)?,MouseButton1Click:((self:GuiButton__DARKLUA_TYPE_j,
handler:()->())->RBXScriptConnection)?,MouseButton1Down:((self:
GuiButton__DARKLUA_TYPE_j,handler:(x:number,y:number)->())->RBXScriptConnection)
?,MouseButton1Up:((self:GuiButton__DARKLUA_TYPE_j,handler:(x:number,y:number)->(
))->RBXScriptConnection)?,MouseButton2Click:((self:GuiButton__DARKLUA_TYPE_j,
handler:()->())->RBXScriptConnection)?,MouseButton2Down:((self:
GuiButton__DARKLUA_TYPE_j,handler:(x:number,y:number)->())->RBXScriptConnection)
?,MouseButton2Up:((self:GuiButton__DARKLUA_TYPE_j,handler:(x:number,y:number)->(
))->RBXScriptConnection)?}type TextButton__DARKLUA_TYPE_k=
GuiButton__DARKLUA_TYPE_j&{FontFace:Font?,LineHeight:number?,MaxVisibleGraphemes
:number?,OpenTypeFeatures:string?,RichText:boolean?,Text:string?,TextColor3:
Color3?,TextDirection:Enum.TextDirection?,TextScaled:boolean?,TextSize:number?,
TextStrokeColor3:Color3?,TextStrokeTransparency:number?,TextTransparency:number?
,TextTruncate:Enum.TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.
TextXAlignment?,TextYAlignment:Enum.TextYAlignment?,SetTextFromInput:((self:
TextButton__DARKLUA_TYPE_k,text:string)->())?}type ValueState__DARKLUA_TYPE_l={
Value:any,Connect:(...any)->any}type Theme__DARKLUA_TYPE_m={[any]:any}type
BaseComponent__DARKLUA_TYPE_n={Type:string,Theme:Theme__DARKLUA_TYPE_m,
Structures:{[string]:Instance__DARKLUA_TYPE_a|{any}}}type
AppProperties__DARKLUA_TYPE_o=ScreenGui__DARKLUA_TYPE_e&{WindowPill:boolean?,
Theme:Theme__DARKLUA_TYPE_m?}type App__DARKLUA_TYPE_p=
AppProperties__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_3 type
WindowProperties__DARKLUA_TYPE_q=Frame__DARKLUA_TYPE_f&{Searching:boolean?,
Draggable:boolean?,Resizable:boolean?,Title:string?,Subtitle:string?,Maximized:
boolean?,Minimized:boolean?,Dropshadow:boolean?,UIBlur:boolean?}type
Window__DARKLUA_TYPE_r=BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
WindowProperties__DARKLUA_TYPE_q type SectionProperties__DARKLUA_TYPE_s=
Frame__DARKLUA_TYPE_f&{Title:string?,Disclosure:boolean?,Expanded:boolean?}type
Section__DARKLUA_TYPE_t=BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3
&SectionProperties__DARKLUA_TYPE_s type TabProperties__DARKLUA_TYPE_u=
Frame__DARKLUA_TYPE_f&{Title:string?,Icon:string?,Indentation:number?,Selected:
boolean?}type Tab__DARKLUA_TYPE_v=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&TabProperties__DARKLUA_TYPE_u type
FormProperties__DARKLUA_TYPE_w=Frame__DARKLUA_TYPE_f type Form__DARKLUA_TYPE_x=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
FormProperties__DARKLUA_TYPE_w type RowProperties__DARKLUA_TYPE_y=
Frame__DARKLUA_TYPE_f&{SearchIndex:string?}type Row__DARKLUA_TYPE_z=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
RowProperties__DARKLUA_TYPE_y&{Left:(self:Row__DARKLUA_TYPE_z)->
Row__DARKLUA_TYPE_z,Right:(self:Row__DARKLUA_TYPE_z)->Row__DARKLUA_TYPE_z}type
StackProperties__DARKLUA_TYPE_A=Frame__DARKLUA_TYPE_f&{Padding:UDim?,
HorizontalAlignment:Enum.HorizontalAlignment?,VerticalAlignment:Enum.
VerticalAlignment?}type Stack__DARKLUA_TYPE_B=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&StackProperties__DARKLUA_TYPE_A type
TitleStackProperties__DARKLUA_TYPE_C=Frame__DARKLUA_TYPE_f&{Title:string?,
Subtitle:string?}type TitleStack__DARKLUA_TYPE_D=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&TitleStackProperties__DARKLUA_TYPE_C type
PageSectionProperties__DARKLUA_TYPE_E=Frame__DARKLUA_TYPE_f&{Title:string?,
Subtitle:string?}type PageSection__DARKLUA_TYPE_F=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&PageSectionProperties__DARKLUA_TYPE_E type
LabelProperties__DARKLUA_TYPE_G=TextLabel__DARKLUA_TYPE_g type
Label__DARKLUA_TYPE_H=BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
LabelProperties__DARKLUA_TYPE_G type SymbolProperties__DARKLUA_TYPE_I=
ImageLabel__DARKLUA_TYPE_i&{Style:('Primary'|'Secondary')?}type
Symbol__DARKLUA_TYPE_J=BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
SymbolProperties__DARKLUA_TYPE_I type ToggleProperties__DARKLUA_TYPE_K=
Frame__DARKLUA_TYPE_f&{Value:boolean?,ValueChanged:((self:Toggle__DARKLUA_TYPE_L
,value:boolean)->unknown)?}type Toggle__DARKLUA_TYPE_L=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
ToggleProperties__DARKLUA_TYPE_K type TextFieldProperties__DARKLUA_TYPE_M=
Frame__DARKLUA_TYPE_f&{Placeholder:string?,Value:string?,TextChanged:((self:
TextField__DARKLUA_TYPE_N,text:string)->unknown)?,ValueChanged:((self:
TextField__DARKLUA_TYPE_N,value:string)->unknown)?}type
TextField__DARKLUA_TYPE_N=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&TextFieldProperties__DARKLUA_TYPE_M type
KeybindFieldProperties__DARKLUA_TYPE_O=Frame__DARKLUA_TYPE_f&{Placeholder:string
?,Value:Enum.KeyCode?,BindPressed:((self:KeybindField__DARKLUA_TYPE_P,value:Enum
.KeyCode,inputComplete:boolean,gameProcessedEvent:boolean)->unknown)?,
ValueChanged:((self:KeybindField__DARKLUA_TYPE_P,value:Enum.KeyCode)->unknown)?}
type KeybindField__DARKLUA_TYPE_P=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&KeybindFieldProperties__DARKLUA_TYPE_O type
SliderProperties__DARKLUA_TYPE_Q=ImageLabel__DARKLUA_TYPE_i&{Minimum:number?,
Maximum:number?,Value:number?,ValueChanged:((self:Slider__DARKLUA_TYPE_R,value:
number)->unknown)?}type Slider__DARKLUA_TYPE_R=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&SliderProperties__DARKLUA_TYPE_Q type
ButtonProperties__DARKLUA_TYPE_S=TextButton__DARKLUA_TYPE_k&{State:('Primary'|
'Secondary'|'Destructive')?,Label:string?,Pushed:((self:Button__DARKLUA_TYPE_T
)->unknown)?}type Button__DARKLUA_TYPE_T=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&ButtonProperties__DARKLUA_TYPE_S type
StepperProperties__DARKLUA_TYPE_U=ImageLabel__DARKLUA_TYPE_i&{Minimum:number?,
Maximum:number?,Step:number?,Fielded:boolean?,Value:number?,ValueChanged:((self:
Stepper__DARKLUA_TYPE_V,value:number)->unknown)?}type Stepper__DARKLUA_TYPE_V=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
StepperProperties__DARKLUA_TYPE_U&{Increment:()->nil,Decrement:()->nil}type
RadioButtonGroupProperties__DARKLUA_TYPE_W=Frame__DARKLUA_TYPE_f&{Options:{[
number]:string}?,Value:number?,ValueChanged:((self:
RadioButtonGroup__DARKLUA_TYPE_X,value:number)->unknown)?}type
RadioButtonGroup__DARKLUA_TYPE_X=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&RadioButtonGroupProperties__DARKLUA_TYPE_W&{Option:(
Name:string?)->Frame__DARKLUA_TYPE_f}type PopUpButtonProperties__DARKLUA_TYPE_Y=
Frame__DARKLUA_TYPE_f&{Options:{[number]:string}?,Expanded:boolean?,Maximum:
number?,Value:(number|{number})?,ValueChanged:((self:PopUpButton__DARKLUA_TYPE_Z
,value:number|{number})->unknown)?}type PopUpButton__DARKLUA_TYPE_Z=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
PopUpButtonProperties__DARKLUA_TYPE_Y&{Option:(Name:string?)->
Frame__DARKLUA_TYPE_f,Remove:(Index:number?)->nil}type
PullDownButtonProperties__DARKLUA_TYPE__=Frame__DARKLUA_TYPE_f&{Options:{[number
]:string}?,Expanded:boolean?,Label:string?,Value:number?,ValueChanged:((self:
PullDownButton__DARKLUA_TYPE_0,value:number)->unknown)?}type
PullDownButton__DARKLUA_TYPE_0=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&PullDownButtonProperties__DARKLUA_TYPE__&{Option:(
Name:string?)->Frame__DARKLUA_TYPE_f,Remove:(Index:number?)->nil}type
NotificationProperties__DARKLUA_TYPE_1=Frame__DARKLUA_TYPE_f&{Title:string?,Body
:string?,Footer:string?,Icon:string?,Duration:number?,Position:('TopLeft'|
'TopRight'|'BottomLeft'|'BottomRight')?}type Notification__DARKLUA_TYPE_2=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
NotificationProperties__DARKLUA_TYPE_1&{Dismiss:(tween:boolean?)->nil,Show:()->
nil}type Components__DARKLUA_TYPE_3={Window:(self:any,properties:
WindowProperties__DARKLUA_TYPE_q?)->Window__DARKLUA_TYPE_r,Section:(self:any,
properties:SectionProperties__DARKLUA_TYPE_s?)->Section__DARKLUA_TYPE_t,Tab:(
self:any,properties:TabProperties__DARKLUA_TYPE_u?)->Tab__DARKLUA_TYPE_v,Form:(
self:any,properties:FormProperties__DARKLUA_TYPE_w?)->Form__DARKLUA_TYPE_x,Row:(
self:any,properties:RowProperties__DARKLUA_TYPE_y?)->Row__DARKLUA_TYPE_z,VStack:
(self:any,properties:StackProperties__DARKLUA_TYPE_A?)->Stack__DARKLUA_TYPE_B,
HStack:(self:any,properties:StackProperties__DARKLUA_TYPE_A?)->
Stack__DARKLUA_TYPE_B,TitleStack:(self:any,properties:
TitleStackProperties__DARKLUA_TYPE_C?)->TitleStack__DARKLUA_TYPE_D,PageSection:(
self:any,properties:PageSectionProperties__DARKLUA_TYPE_E?)->
PageSection__DARKLUA_TYPE_F,Label:(self:any,properties:
LabelProperties__DARKLUA_TYPE_G)->Label__DARKLUA_TYPE_H,Symbol:(self:any,
properties:SymbolProperties__DARKLUA_TYPE_I)->Symbol__DARKLUA_TYPE_J,Toggle:(
self:any,properties:ToggleProperties__DARKLUA_TYPE_K)->Toggle__DARKLUA_TYPE_L,
TextField:(self:any,properties:TextFieldProperties__DARKLUA_TYPE_M)->
TextField__DARKLUA_TYPE_N,KeybindField:(self:any,properties:
KeybindFieldProperties__DARKLUA_TYPE_O)->KeybindField__DARKLUA_TYPE_P,Slider:(
self:any,properties:SliderProperties__DARKLUA_TYPE_Q)->Slider__DARKLUA_TYPE_R,
Button:(self:any,properties:ButtonProperties__DARKLUA_TYPE_S)->
Button__DARKLUA_TYPE_T,Stepper:(self:any,properties:
StepperProperties__DARKLUA_TYPE_U)->Stepper__DARKLUA_TYPE_V,RadioButtonGroup:(
self:any,properties:RadioButtonGroupProperties__DARKLUA_TYPE_W)->
RadioButtonGroup__DARKLUA_TYPE_X,PopUpButton:(self:any,properties:
PopUpButtonProperties__DARKLUA_TYPE_Y)->PopUpButton__DARKLUA_TYPE_Z,
PullDownButton:(self:any,properties:PullDownButtonProperties__DARKLUA_TYPE__)->
PullDownButton__DARKLUA_TYPE_0,Notification:(self:any,properties:
NotificationProperties__DARKLUA_TYPE_1)->Notification__DARKLUA_TYPE_2}type
ExpectedObject__DARKLUA_TYPE_4=((...any)->...any)|Instance|SomeOtherService
local a={cache={}::any}do do local b=function()local b={}function b.Apply(c:{[
string]:any},d:any,e:{[number]:string}?):any for f,g in pairs(c)do if e and
table.find(e,f)then continue end pcall(function()d[f]=g end)end return d end
function b.ReactiveTable(c,d)local e,f=table.clone(c or{}),{}local g={__index=
function(g,h)return e[h]end,__newindex=function(g,h,i)e[h]=i if d then d(e)end
end,__len=function()return#e end,__pairs=function()return pairs(e)end,__ipairs=
function()return ipairs(e)end,__metatable=false}return setmetatable(f,g)end
function b.Wrap(c:{[string]:any},d:{[string]:(any)->()},e:Instance?,f:{[number]:
any}?):any local g={}setmetatable(g,{__index=function(h,i)if c[i]~=nil then
return c[i]elseif e then local j,k=pcall(function()return e[i]end)if j then
return k end end return end,__newindex=function(h,i,j)local k=d[i]if k then k(j)
if not(f and table.find(f,i))then c[i]=j end elseif e then local l=pcall(
function()e[i]=j end)if not l then c[i]=j end else c[i]=j end end})return g end
return b end function a.a():typeof(b())local c=a.cache.a if not c then c={c=b()}
a.cache.a=c end return c.c end end do local b=function()return 1 end function a.
b():typeof(b())local c=a.cache.b if not c then c={c=b()}a.cache.b=c end return c
.c end end do local b=function()local b={}b.Clone=function(c:any)local d:any if
type(c)=='function'then d=clonefunction and clonefunction(c)elseif typeof(c)==
'Instance'then d=cloneref and cloneref(c)end return d or c end b.ProtectUI=
function(c:Instance):ScreenGui|string local d,e=pcall(function()return gethui()
end)local f,g=pcall(function()local f=b.Clone(game:GetService'CoreGui')if f and
f.ClassName then return f end return end)local h,i=pcall(function()c.Parent=d
and e or f and g or b.Clone(game:GetService'Players').LocalPlayer.PlayerGui end)
return h and c or i end return b end function a.c():typeof(b())local c=a.cache.c
if not c then c={c=b()}a.cache.c=c end return c.c end end do local b=function()
local b=a.c()local c=function(c:string)return b.Clone(game:GetService(c))end
return{HttpService=c'HttpService'::HttpService,TweenService=c'TweenService'::
TweenService,RunService=c'RunService'::RunService,UserInputService=c
'UserInputService'::UserInputService,GuiService=c'GuiService'::GuiService,
Workspace=c'Workspace'::Workspace,Players=c'Players'::Players,Lighting=c
'Lighting'::Lighting}end function a.d():typeof(b())local c=a.cache.d if not c
then c={c=b()}a.cache.d=c end return c.c end end do local b=function()local b,c,
d=a.b(),a.a(),{}function d.Value(e:any):ValueState__DARKLUA_TYPE_l local f={}
return c.Wrap({Value=e,Connect=function(g,h)table.insert(f,h)return h end},{
Value=function(g)for h,i in pairs(f)do pcall(i,g)end end})end function d.Create(
e:string)return function(f)f=f or{}local g=Instance.new(e)for h,i in pairs(f)do
if h=='__dynamicKeys'and type(i)=='table'then for j,k:ValueState__DARKLUA_TYPE_l
in pairs(i)do pcall(function()g[j]=k.Value end)k:Connect(function(l)task.defer(
pcall,function()if f.__contextKeys and f.__contextKeys._general then f.
__contextKeys._general()end g[j]=f.__contextKeys and f.__contextKeys[j]and f.
__contextKeys[j]()or l end)end)end continue end if typeof(i)=='table'and i.
__unique then i.Parent=g end pcall(function()g[h]=i end)end return setmetatable(
{__unique=true},{__metatable=g,__index=function(h,i)if i=='__instance'then
return g end local j=g[i]if typeof(j)=='function'then return function(k,...)
return j(g,...)end else return j end end,__newindex=function(h,i,j)g[i]=j end})
end end return d end function a.e():typeof(b())local c=a.cache.e if not c then c
={c=b()}a.cache.e=c end return c.c end end do local b=function()local b,c=a.d(),
a.e()local d,e,f,g=b.Workspace,b.Lighting,c.Create,function(d,e,f,g,h)return(d-e
)*(h-g)/(f-e)+g end local h,i=function(h,i)local j=d.CurrentCamera:
ScreenPointToRay(h.X,h.Y)return j.Origin+j.Direction*i end,function()local h=d.
CurrentCamera.ViewportSize.Y return g(h,0,2560,8,56)end local j=function(j:
number?)local k,l,m,n,o=Instance.new('Folder',d.CurrentCamera),{},{topLeft=
Vector2.new(),topRight=Vector2.new(),bottomRight=Vector2.new()},f'Part'{Color=
Color3.new(0,0,0),Material=Enum.Material.Glass,Size=Vector3.new(1,1,0),Anchored=
true,CanTouch=false,CanCollide=false,CanQuery=false,Locked=true,CastShadow=false
,Transparency=0.98,f'SpecialMesh'{MeshType=Enum.MeshType.Brick,Offset=Vector3.
new(0,0,-1E-6)}}::Part,f'DepthOfFieldEffect'{FarIntensity=0,NearIntensity=1,
InFocusRadius=0.1,Parent=e}local p=n:FindFirstChildWhichIsA'SpecialMesh'j=j or
0.001 local q,r=function(q,r)m.topLeft=r m.topRight=r+Vector2.new(q.X,0)m.
bottomRight=r+q end,function()local q=d.CurrentCamera local r,s,t,u=(q and{(q.
CFrame)}or{(CFrame.identity)})[1],m.topLeft,m.topRight,m.bottomRight local v,w,x
=h(s,j),h(t,j),h(u,j)local y,z=(w-v).Magnitude,(w-x).Magnitude n.CFrame=CFrame.
fromMatrix((v+x)/2,r.XVector,r.YVector,r.ZVector)if p then p.Scale=Vector3.new(y
,z,0)end end local s,t=function(s)local t=i()local u,v=s.AbsoluteSize-Vector2.
new(t,t),s.AbsolutePosition+Vector2.new(t/2,t/2)q(u,v)task.spawn(r)end,function(
)local s=d.CurrentCamera if not s then return end l[#l+1]=s:
GetPropertyChangedSignal'CFrame':Connect(r)l[#l+1]=s:GetPropertyChangedSignal
'ViewportSize':Connect(r)l[#l+1]=s:GetPropertyChangedSignal'FieldOfView':
Connect(r)task.spawn(r)end n.Parent=k n.Destroying:Connect(function()for u,v in
l do pcall(function()o:Destroy()k:Destroy()v:Disconnect()end)end end)t()return s
,n end return function(k:GuiObject,l:number?)local m,n,o={},j(l)m.SetVisibility=
function(p)o.Transparency=p and 0.98 or 1 end k:GetPropertyChangedSignal
'AbsolutePosition':Connect(function()n(k)end)k:GetPropertyChangedSignal
'AbsoluteSize':Connect(function()n(k)end)k:GetPropertyChangedSignal'Visible':
Connect(function()m.SetVisibility(k.Visible)end)k.Destroying:Connect(function()o
:Destroy()end)m.Model=o n(k)return m end end function a.f():typeof(b())local c=a
.cache.f if not c then c={c=b()}a.cache.f=c end return c.c end end do local b=
function()return{UIBlur=a.f()}end function a.g():typeof(b())local c=a.cache.g if
not c then c={c=b()}a.cache.g=c end return c.c end end do local b=function()
return function(b)local c,d=a.e(),a.d()local e,f,g=c.Create,d.TweenService,{}g.
Body=e'Frame'{Name='TextField',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(150,
23),SizeConstraint=Enum.SizeConstraint.RelativeXX,e'UICorner'{Name='UICorner',
CornerRadius=UDim.new(0,5)},e'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.
ApplyStrokeMode.Border,Thickness=1,__dynamicKeys={Color=b.Theme.Controls.
ViewBorder[1],Transparency=b.Theme.Controls.ViewBorder[2]}},e'TextBox'{Name=
'Field',AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.fromOffset(138,0),
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,CursorPosition=-1,
TextXAlignment=Enum.TextXAlignment.Left,FontFace=Font.new
'rbxassetid://12187365364',PlaceholderText='',Text='',TextSize=15,__dynamicKeys=
{PlaceholderColor3=b.Theme.Text.Tertiary[1],TextTransparency=b.Theme.Text.
Tertiary[2]},__contextKeys={_general=function()local h=g.Field if not h then
return end if h.Text==''then h.PlaceholderColor3=b.Theme.Text.Tertiary[1].Value
h.TextTransparency=b.Theme.Text.Tertiary[2].Value else h.TextColor3=b.Theme.Text
.Primary[1].Value h.TextTransparency=b.Theme.Text.Primary[2].Value end end,
TextTransparency=function()if not g.Field then return 1 end return g.Field.Text
==''and b.Theme.Text.Tertiary[2].Value or b.Theme.Text.Primary[2].Value end},e
'UIPadding'{Name='UIPadding',PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0,4
)}},e'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,6),PaddingRight=UDim.
new(0,6)},e'UIListLayout'{Name='UIListLayout',SortOrder=Enum.SortOrder.
LayoutOrder,HorizontalAlignment=Enum.HorizontalAlignment.Right,VerticalAlignment
=Enum.VerticalAlignment.Center,FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,4)}}::Frame g.Stroke=g.Body:FindFirstChild'UIStroke'::
UIStroke g.Padding=g.Body:FindFirstChild'UIPadding'::UIPadding g.Corner=g.Body:
FindFirstChild'UICorner'::UICorner g.Layout=g.Body:FindFirstChild'UIListLayout'
::UIListLayout g.Field=g.Body:FindFirstChild'Field'::TextBox g.FieldPadding=g.
Field:FindFirstChild'UIPadding'::UIPadding local h,i,j:Tween=TweenInfo.new(0.13,
Enum.EasingStyle.Sine,Enum.EasingDirection.Out),(TweenInfo.new(0.2,Enum.
EasingStyle.Sine,Enum.EasingDirection.Out))g.Field.Focused:Connect(function()if
j then j:Cancel()end j=f:Create(g.Stroke,h,{Color=b.Theme.Controls.
SelectionStroke[1].Value,Transparency=b.Theme.Controls.SelectionStroke[2].Value,
Thickness=3})j:Play()end)g.Field.FocusLost:Connect(function()if j then j:Cancel(
)end j=f:Create(g.Stroke,i,{Color=b.Theme.Controls.ViewBorder[1].Value,
Transparency=b.Theme.Controls.ViewBorder[2].Value,Thickness=1})j:Play()end)g.
Field:GetPropertyChangedSignal'Text':Connect(function()if g.Field.Text==''then g
.Field.PlaceholderColor3=b.Theme.Text.Tertiary[1].Value g.Field.TextTransparency
=b.Theme.Text.Tertiary[2].Value else g.Field.TextColor3=b.Theme.Text.Primary[1].
Value g.Field.TextTransparency=b.Theme.Text.Primary[2].Value end end)return g
end end function a.h():typeof(b())local c=a.cache.h if not c then c={c=b()}a.
cache.h=c end return c.c end end do local b=function()return function(b)local c,
d=a.e(),a.h()(b)local e,f,g,h,i,j=c.Create,{},0,{},function(e)local f,g=e.
AbsolutePosition,e.AbsoluteSize return{Left=f.X,Right=f.X+g.X,Top=f.Y,Bottom=f.Y
+g.Y}end h.Body=e'Frame'{Name='Toolbar',BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Size=UDim2.new(1,0,0,52),__dynamicKeys={BackgroundColor3=b.
Theme.Controls.Titlebar[1],BackgroundTransparency=b.Theme.Controls.Titlebar[2]},
e'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,10)},e'Frame'{Name='Shadow',
AnchorPoint=Vector2.new(1,0),BackgroundColor3=Color3.fromRGB(234,234,234),
BackgroundTransparency=0.75,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0
,Position=UDim2.fromScale(1,1),Size=UDim2.new(1,0,0,2),ZIndex=0,__dynamicKeys={
BackgroundColor3=b.Theme.Controls.TitlebarShadow.Background[1],
BackgroundTransparency=b.Theme.Controls.TitlebarShadow.Background[2]},e
'UIGradient'{Name='UIGradient',Color=ColorSequence.new{ColorSequenceKeypoint.
new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,
0,0))},Rotation=-90,Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0
,0.35),NumberSequenceKeypoint.new(1,0.35)},__dynamicKeys={Color=b.Theme.Controls
.TitlebarShadow.Color,Transparency=b.Theme.Controls.TitlebarShadow.Transparency}
}},e'Frame'{Name='Content',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromScale(1,1),e'Frame'{Name='Leading',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Size=UDim2.fromScale(0,1),e'UIListLayout'{Name='UIListLayout'
,FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=
Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},e
'Frame'{Name='TitleSubtitle',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,LayoutOrder=2,e
'UIListLayout'{Name='UIListLayout',SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center},e'TextLabel'{Name='Subtitle',
AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new('rbxassetid://12187365364',
Enum.FontWeight.Medium,Enum.FontStyle.Normal),LayoutOrder=1,RichText=true,Size=
UDim2.fromOffset(0,14),Text='Subtitle',TextColor3=Color3.fromRGB(0,0,0),TextSize
=12,Visible=false,__dynamicKeys={TextColor3=b.Theme.Text.Secondary[1],
TextTransparency=b.Theme.Text.Secondary[2]}},e'TextLabel'{Name='Title',
AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.SemiBold,Enum.
FontStyle.Normal),LineHeight=0,RichText=true,Size=UDim2.fromOffset(0,20),Text=
'Title',TextSize=16,__dynamicKeys={TextColor3=b.Theme.Text.Primary[1],
TextTransparency=b.Theme.Text.Primary[2]}}},e'UIPadding'{Name='UIPadding',
PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},e'Frame'{Name=
'NavigationButtons',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,LayoutOrder=1,e'UIListLayout'{Name='UIListLayout',
FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,1),SortOrder=Enum
.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},e
'TextButton'{Name='Back',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxasset://fonts/families/SourceSansPro.json',Size=UDim2.
fromOffset(27,20),Text='',TextColor3=Color3.fromRGB(0,0,0),TextSize=14,e
'ImageLabel'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://137248392050045',ImageColor3=Color3.fromRGB(0,0,0),Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(9,15),__dynamicKeys={ImageColor3=
b.Theme.Text.Tertiary[1],ImageTransparency=b.Theme.Text.Tertiary[2]},
__contextKeys={ImageColor3=function()local k,l=g>1,j.Theme.Text return(k and l.
Secondary[1].Value)or l.Tertiary[1].Value end,ImageTransparency=function()local
k,l=g>1,j.Theme.Text return(k and l.Secondary[2].Value)or l.Tertiary[2].Value
end}}},e'TextButton'{Name='Forward',BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxasset://fonts/families/SourceSansPro.json',LayoutOrder=1,
Size=UDim2.fromOffset(27,20),Text='',TextColor3=Color3.fromRGB(0,0,0),TextSize=
14,e'ImageLabel'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://95285878898359',Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(9,15),__dynamicKeys={ImageColor3=
b.Theme.Text.Tertiary[1],ImageTransparency=b.Theme.Text.Tertiary[2]},
__contextKeys={ImageColor3=function()local k,l=g<#f,j.Theme.Text return(k and l.
Secondary[1].Value)or l.Tertiary[1].Value end,ImageTransparency=function()local
k,l=g<#f,j.Theme.Text return(k and l.Secondary[2].Value)or l.Tertiary[2].Value
end}}}},e'Frame'{Name='SidebarButton',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(38,34
),e'ImageButton'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),AutoButtonColor=
false,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://74380920233260',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromOffset(20,16),__dynamicKeys={ImageColor3=b.Theme.Text.Secondary[1],
ImageTransparency=b.Theme.Text.Secondary[2]}}}},e'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,HorizontalFlex=Enum.
UIFlexAlignment.Fill,SortOrder=Enum.SortOrder.LayoutOrder},e'Frame'{Name=
'Trailing',BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1
,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(0,1),
e'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0
,12)},e'UIListLayout'{Name='UIListLayout',HorizontalAlignment=Enum.
HorizontalAlignment.Right,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment
=Enum.VerticalAlignment.Center}}},e'Frame'{Name='CornerClipRight',AnchorPoint=
Vector2.new(1,1),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=
UDim2.fromScale(1,1),Size=UDim2.new(0,10,0.5,0),ZIndex=-1,__dynamicKeys={
BackgroundColor3=b.Theme.Controls.Titlebar[1]}},e'Frame'{Name='CornerClipLeft',
AnchorPoint=Vector2.new(0,1),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=
0,Position=UDim2.fromScale(0,1),Size=UDim2.new(0,10,1,0),ZIndex=-1,__dynamicKeys
={BackgroundColor3=b.Theme.Controls.Titlebar[1]}}}::TextButton h.CornerClipLeft=
h.Body:FindFirstChild'CornerClipLeft'::Frame h.CornerClipRight=h.Body:
FindFirstChild'ConerClipRight'::Frame h.Content=h.Body:FindFirstChild'Content'::
Frame h.Leading=h.Content:FindFirstChild'Leading'::Frame h.Trailing=h.Content:
FindFirstChild'Trailing'::Frame h.NavigationButtons=h.Leading:FindFirstChild
'NavigationButtons'::Frame h.Back=h.NavigationButtons:FindFirstChild'Back'::
TextButton h.Forward=h.NavigationButtons:FindFirstChild'Forward'::TextButton h.
SidebarButton=h.Leading:FindFirstChild'SidebarButton':FindFirstChild'Image'::
ImageButton h.TitleStack=h.Leading:FindFirstChild'TitleSubtitle'::Frame h.Title=
h.TitleStack:FindFirstChild'Title'::TextLabel h.Subtitle=h.TitleStack:
FindFirstChild'Subtitle'::TextLabel h.SearchField=d h.SearchField.Body.Size=
UDim2.fromOffset(126,28)h.SearchField.Field.Size=UDim2.fromOffset(90,0)h.
SearchField.Layout.Padding=UDim.new(0,8)h.SearchField.Field.LayoutOrder=1 h.
SearchField.Field.PlaceholderText='Search'h.SearchField.Padding.PaddingLeft=UDim
.new(0,7)h.SearchField.Padding.PaddingRight=UDim.new(0,7)h.SearchField.Corner=
UDim.new(0,6)e'ImageLabel'{Name='ImageLabel',BackgroundColor3=Color3.fromRGB(255
,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://120817720539967',Size=UDim2.fromOffset(13,
14),Parent=h.SearchField.Body.__instance,__dynamicKeys={ImageColor3=b.Theme.Text
.PrimaryAccent[1],ImageTransparency=b.Theme.Text.PrimaryAccent[2]}}h.SearchField
.Body.Parent=h.Trailing local k=function()if not j then return end local k,l,m=h
.Back:FindFirstChild'Image',h.Forward:FindFirstChild'Image',j.Theme.Text if k
then local n=g>1 k.ImageColor3=(n and m.Secondary[1].Value)or m.Tertiary[1].
Value k.ImageTransparency=(n and m.Secondary[2].Value)or m.Tertiary[2].Value h.
Back.Interactable=n end if l then local n=g<#f l.ImageColor3=(n and m.Secondary[
1].Value)or m.Tertiary[1].Value l.ImageTransparency=(n and m.Secondary[2].Value)
or m.Tertiary[2].Value h.Forward.Interactable=n end end local l,m=setmetatable({
},{__newindex=function(l,m,n)rawset(f,m,n)k()end,__index=function(l,m)return f[m
]end,__len=function()return#f end}),function(l)if j and j.Tabs then for m,n in
pairs(j.Tabs)do if n.__container==l then n.Selected=true else n.Selected=false
end end end end local n,o=function()h.Back.MouseButton1Click:Connect(function()
if g>1 then g-=1 m(f[g])k()end end)h.Forward.MouseButton1Click:Connect(function(
)if g<#f then g+=1 m(f[g])k()end end)end,function()for n,o in pairs(h.Trailing:
GetChildren())do if not o:IsA'GuiObject'then continue end local p,q=i(o),true
for r,s in pairs(h.Leading:GetChildren())do if not s:IsA'GuiObject'then continue
end local t=i(s)local u=(t.Right>=p.Left and t.Left<=p.Right)and(t.Bottom>=p.Top
and t.Top<=p.Bottom)if u then q=false break end end o.Visible=q end end o()h.
Body:GetPropertyChangedSignal'AbsoluteSize':Connect(o)return h,function(p)j=p n(
)return function(q)for r=#f,g+1,-1 do f[r]=nil end g+=1 l[g]=q end end end end
function a.i():typeof(b())local c=a.cache.i if not c then c={c=b()}a.cache.i=c
end return c.c end end do local b=function()return function(b,c)local d=a.e()
local e,f=d.Create,{}f.Handles=e'Folder'{Name='Handles',Parent=b,e'Frame'{Name=
'E',AnchorPoint=Vector2.new(1,0.5),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,0.5),Size=UDim2.new(0,6,1,0),ZIndex=8,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://122180269146343',CursorIcon='rbxassetid://122180269146343',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'N',AnchorPoint=Vector2.new(0.5,0),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0.5,0),Size=UDim2.new(1,0,0,6),ZIndex=8,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://109321922977357',CursorIcon='rbxassetid://109321922977357',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'NE',AnchorPoint=Vector2.new(1,0),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,0),Size=UDim2.fromOffset(10,10),ZIndex=9,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://78578587100983',CursorIcon='rbxassetid://78578587100983',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'NW',BackgroundColor3=Color3.fromRGB(255,0,81),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(10,10
),ZIndex=9,e'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://127507239458439',CursorIcon='rbxassetid://127507239458439',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'S',AnchorPoint=Vector2.new(0.5,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0.5,1),Size=UDim2.new(1,0,0,6),ZIndex=8,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://109321922977357',CursorIcon='rbxassetid://109321922977357',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'SE',AnchorPoint=Vector2.new(1,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,1),Size=UDim2.fromOffset(10,10),ZIndex=9,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://127507239458439',CursorIcon='rbxassetid://127507239458439',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'SW',AnchorPoint=Vector2.new(0,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0,1),Size=UDim2.fromOffset(10,10),ZIndex=9,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://78578587100983',CursorIcon='rbxassetid://78578587100983',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'W',AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0,0.5),Size=UDim2.new(0,6,1,0),ZIndex=8,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://122180269146343',CursorIcon='rbxassetid://122180269146343',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}}}::Folder c=c or
Vector2.new(0,0)f.N=f.Handles:FindFirstChild'N':FindFirstChild'UIDragDetector'f.
S=f.Handles:FindFirstChild'S':FindFirstChild'UIDragDetector'f.W=f.Handles:
FindFirstChild'W':FindFirstChild'UIDragDetector'f.E=f.Handles:FindFirstChild'E':
FindFirstChild'UIDragDetector'f.NE=f.Handles:FindFirstChild'NE':FindFirstChild
'UIDragDetector'f.SE=f.Handles:FindFirstChild'SE':FindFirstChild'UIDragDetector'
f.NW=f.Handles:FindFirstChild'NW':FindFirstChild'UIDragDetector'f.SW=f.Handles:
FindFirstChild'SW':FindFirstChild'UIDragDetector'local g,h,i={}g.__index=g local
j=function(j:Vector2,k:string)local l=Vector2.zero if string.find(k,'N')then l+=
Vector2.new(0,-1)end if string.find(k,'S')then l+=Vector2.new(0,1)end if string.
find(k,'W')then l+=Vector2.new(-1,0)end if string.find(k,'E')then l+=Vector2.
new(1,0)end local m=Vector2.new((l.X~=0)and(j.X*l.X)or 0,(l.Y~=0)and(j.Y*l.Y)or
0)local n=i+m n=Vector2.new(math.max(c.X,n.X),math.max(c.Y,n.Y))local o=n-i
local p=Vector2.new(l.X<0 and-o.X*0.5 or o.X*0.5,l.Y<0 and-o.Y*0.5 or o.Y*0.5)
local q=h+p b.Size=UDim2.fromOffset(n.X,n.Y)b.Position=UDim2.new(0.5,q.X,0.5,q.Y
)end local k=function(k,l:string)k.DragStart:Connect(function()i=b.AbsoluteSize
h=Vector2.new(b.Position.X.Offset,b.Position.Y.Offset)end)k.DragContinue:
Connect(function()j(Vector2.new(k.DragUDim2.X.Offset,k.DragUDim2.Y.Offset),l)end
)end function g.CreateClient()k(f.NW,'NW')k(f.NE,'NE')k(f.SW,'SW')k(f.SE,'SE')k(
f.E,'E')k(f.W,'W')k(f.S,'S')k(f.N,'N')end function g.SetEnabled(l:boolean)for m,
n in pairs(f)do if n:IsA'UIDragDetector'then n.Enabled=l end end end return g
end end function a.j():typeof(b())local c=a.cache.j if not c then c={c=b()}a.
cache.j=c end return c.c end end do local b=function()a.b()return function(b,c:
WindowProperties__DARKLUA_TYPE_q):Window__DARKLUA_TYPE_r local d,e,f,g,h,i=a.g()
,a.d(),a.e(),a.a(),a.i()(b)local j,k,l,m,n=a.j(),f.Create,e.UserInputService,e.
TweenService,b.__container or b.__instance or b local o,p,q,r,s,t,u,v=k'Frame'{
Name='Window',BackgroundTransparency=1,BorderSizePixel=0,Size=UDim2.fromScale(1,
1),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Parent=n}.
__instance,{}c=c or{}c.Size=c.Size or UDim2.fromOffset(850,530)c.Maximized=c.
Maximized==true c.Minimized=c.Minimized==true c.Searching=c.Searching~=false c.
Resizable=c.Resizable~=false c.Draggable=c.Draggable~=false c.Resizable=c.
Resizable~=false c.Dropshadow=c.Dropshadow~=false c.UIBlur=c.UIBlur~=false c.
Title=c.Title or'Title'p.Body=g.Apply(c,k'Frame'{Name='Body',BorderSizePixel=0,
AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Parent=o,
__dynamicKeys={BackgroundColor3=b.Theme.Controls.Sidebar[1],
BackgroundTransparency=b.Theme.Controls.Sidebar[2]},__contextKeys={
BackgroundTransparency=function()return c.UIBlur and b.Theme.Controls.Sidebar[2]
.Value or 0 end},k'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,10)},k
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,0),SortOrder=Enum.SortOrder.LayoutOrder},k'Frame'{Name=
'Sidebar',BackgroundColor3=Color3.fromRGB(234,234,234),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(0,200,1,0),
ClipsDescendants=true,k'UIPadding'{Name='UIPadding'},k'Frame'{Name='Margins',
BackgroundColor3=Color3.fromRGB(234,234,234),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(0,200,1,0),k
'Folder'{Name='LayoutIgnore',k'Frame'{Name='Shadow',AnchorPoint=Vector2.new(1,0)
,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.new(1,2,0,0
),Size=UDim2.new(0,5,1,0),ZIndex=0,__dynamicKeys={BackgroundColor3=b.Theme.
Controls.Separator.Shadow[1],BackgroundTransparency=b.Theme.Controls.Separator.
Shadow[2]},k'UIGradient'{Name='UIGradient',Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)}}}},k'UIPadding'
{Name='UIPadding',PaddingRight=UDim.new(0,2)},k'Frame'{Name='Toolbar',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(1,0,0,52),k
'Frame'{Name='WindowControls',AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(0,0.5),Size=UDim2.
fromOffset(92,38),k'UIListLayout'{Name='UIListLayout',FillDirection=Enum.
FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},k'UIPadding'{Name=
'UIPadding',PaddingLeft=UDim.new(0,20),PaddingRight=UDim.new(0,20)},k
'ImageButton'{Name='Exit',AutoButtonColor=false,BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://132228700346004',Size=UDim2.fromOffset(12,
12),__dynamicKeys={ImageColor3=b.Theme.Controls.Exit[1],ImageTransparency=b.
Theme.Controls.Exit[2]},k'ImageLabel'{Name='Stroke',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://94763505860483',Size=UDim2.fromScale(1,1)
,__dynamicKeys={ImageColor3=b.Theme.Controls.WindowControlStroke[1],
ImageTransparency=b.Theme.Controls.WindowControlStroke[2]}},k'ImageLabel'{Name=
'Icon',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,
255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel
=0,Image='rbxassetid://94781753558308',Position=UDim2.fromScale(0.5,0.5),Size=
UDim2.fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=b.Theme.Controls.
WindowControlIcon[1],ImageTransparency=b.Theme.Controls.WindowControlIcon[2]}}},
k'ImageButton'{Name='Minimize',AutoButtonColor=false,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://132228700346004',LayoutOrder=1,Size=UDim2
.fromOffset(12,12),__dynamicKeys={ImageColor3=b.Theme.Controls.Minimize[1],
ImageTransparency=b.Theme.Controls.Minimize[2]},k'ImageLabel'{Name='Stroke',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://94763505860483',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=b.Theme.Controls.WindowControlStroke[1],ImageTransparency=b.Theme.
Controls.WindowControlStroke[2]}},k'ImageLabel'{Name='Icon',AnchorPoint=Vector2.
new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency
=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://118368309445367',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=b.Theme.Controls.
WindowControlIcon[1],ImageTransparency=b.Theme.Controls.WindowControlIcon[2]}}},
k'ImageButton'{Name='Zoom',AutoButtonColor=false,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://132228700346004',LayoutOrder=2,Size=UDim2
.fromOffset(12,12),__dynamicKeys={ImageColor3=b.Theme.Controls.Zoom[1],
ImageTransparency=b.Theme.Controls.Zoom[2]},k'ImageLabel'{Name='Stroke',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://94763505860483',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=b.Theme.Controls.WindowControlStroke[1],ImageTransparency=b.Theme.
Controls.WindowControlStroke[2]}},k'ImageLabel'{Name='Icon',AnchorPoint=Vector2.
new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency
=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://114376524082699',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=b.Theme.Controls.
WindowControlIcon[1],ImageTransparency=b.Theme.Controls.WindowControlIcon[2]}}}}
},k'ScrollingFrame'{Name='SidebarList',AutomaticCanvasSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,CanvasSize=UDim2.new(),
Position=UDim2.fromOffset(0,52),ScrollBarImageColor3=Color3.fromRGB(0,0,0),
ScrollBarImageTransparency=0.7,ScrollBarThickness=6,Size=UDim2.new(1,0,1,-52),k
'UIListLayout'{Name='UIListLayout',Padding=UDim.new(0,9),SortOrder=Enum.
SortOrder.LayoutOrder,HorizontalAlignment=Enum.HorizontalAlignment.Right},k
'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,
10),PaddingBottom=UDim.new(0,10)}}}},k'Frame'{Name='Separator',AnchorPoint=
Vector2.new(1,0),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=1,Position=UDim2.fromScale(1,0),Size=UDim2.new(0,1,1,0),
__dynamicKeys={BackgroundColor3=b.Theme.Controls.Separator.Background[1],
BackgroundTransparency=b.Theme.Controls.Separator.Background[2]}},k'Frame'{Name=
'ContentBody',AnchorPoint=Vector2.new(1,0),BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,ClipsDescendants=true,LayoutOrder=2,Position=UDim2.fromScale(1
,0),Size=UDim2.new(1,-201,1,0),__dynamicKeys={BackgroundColor3=b.Theme.Controls.
Background[1],BackgroundTransparency=b.Theme.Controls.Background[2]},k'UICorner'
{Name='UICorner',CornerRadius=UDim.new(0,10)},k'Frame'{Name='Content',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(255,199,199),BorderMode=Enum.BorderMode.Inset,
BorderSizePixel=0,ClipsDescendants=true,Position=UDim2.fromOffset(0,52),Size=
UDim2.new(1,0,1,-52),k'UIPadding'{Name='Margins',PaddingBottom=UDim.new(0,3),
PaddingLeft=UDim.new(0,3),PaddingRight=UDim.new(0,3),PaddingTop=UDim.new(0,3)}},
k'Frame'{Name='CornerClip',AnchorPoint=Vector2.new(0,1),BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(0,1),Size=UDim2.
fromOffset(10,10),ZIndex=-1,__dynamicKeys={BackgroundColor3=b.Theme.Controls.
Background[1]}}},k'Folder'{Name='LayoutIgnore',k'TextButton'{Name='TopArea',
AutoButtonColor=false,Active=false,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.new(1,0,0,52),ZIndex=0,Text='',Modal=false},k'ImageLabel'{Name=
'Dropshadow',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://138260268144845',ImageTransparency=0.65,
Interactable=false,Position=UDim2.new(0.5,0,0.5,3),ScaleType=Enum.ScaleType.
Slice,Size=UDim2.new(1,24,1,24),SliceCenter=Rect.new(28,26,96,94),ZIndex=0}}})::
Frame p.Scale=k'UIScale'{Parent=o}p.Cornering=p.Body:FindFirstChild'UICorner'::
UICorner p.LayoutIgnore=p.Body:FindFirstChild'LayoutIgnore'::Folder p.Dropshadow
=p.LayoutIgnore:FindFirstChild'Dropshadow'::ImageLabel p.Separator=p.Body:
FindFirstChild'Separator'::Frame p.SidebarMargins=p.Body:FindFirstChild'Sidebar'
p.Sidebar=p.SidebarMargins:FindFirstChild'Margins'::Frame p.SidebarList=p.
Sidebar:FindFirstChild'SidebarList'::Frame p.Toolbar=p.Sidebar:FindFirstChild
'Toolbar'::Frame p.WindowControls=p.Toolbar:FindFirstChild'WindowControls'::
Frame p.ContentBody=p.Body:FindFirstChild'ContentBody'::Frame p.Content=p.
ContentBody:FindFirstChild'Content'::Frame p.CornerClip=p.ContentBody:
FindFirstChild'CornerClip'::Frame p.Titlebar=h p.Titlebar.Body.Parent=p.
ContentBody q=p.Body.Size r=p.Body.Position local w={Title=function(w:string)p.
Titlebar.Title.Visible=w and true or false if w then p.Titlebar.Title.Text=w end
end,Subtitle=function(w:string)p.Titlebar.Subtitle.Visible=w and true or false
if w then p.Titlebar.Subtitle.Text=w end end,Searching=function(w:boolean)p.
Titlebar.SearchField.Body.Parent=w and p.Titlebar.Trailing or nil p.Titlebar.
SearchField.Body.Visible=w end,Draggable=function(w:boolean)u=not w and false
end,Resizable=function(w:boolean)if v and not c.Maximized then v.SetEnabled(w)
end end,Minimized=function(w:boolean?,x:boolean?)local y=x~=false if w and not t
then s=p.Body.Position if p.BlurModel then p.BlurModel.SetVisibility(false)end
end local z,A,B=TweenInfo.new(0.25,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),{Position=w and UDim2.new(0.5,0,0.5,p.Body.AbsoluteSize.Y*2
)or s},{Scale=w and 0 or 1}if y then t=true m:Create(p.Body.__instance,z,A):
Play()local C:Tween=m:Create(p.Scale.__instance,z,B)C:Play()C.Completed:Once(
function()t=false if p.BlurModel and not c.Minimized then p.BlurModel.
SetVisibility(true)end end)else p.Body.Position=A.Position p.Scale.Scale=B.Scale
if w and p.BlurModel then p.BlurModel.SetVisibility(false)end end end,Maximized=
function(w:boolean?,x:boolean?)x=x~=false if w then q=p.Body.Size r=p.Body.
Position v.SetEnabled(false)else u=false end local y,z,A=TweenInfo.new(0.5,Enum.
EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=w and UDim2.fromScale(1,
1)or q,Position=w and UDim2.fromScale(0.5,0.5)or r},{CornerRadius=w and UDim.
new(0,0)or UDim.new(0,10)}if x then m:Create(p.Body.__instance,y,z):Play()m:
Create(p.Cornering,y,A):Play()else p.Body.Size=z.Size p.Body.Position=z.Position
p.Cornering.CornerRadius=A.CornerRadius end if not w then v.SetEnabled(c.
Resizable)end end,Dropshadow=function(w:boolean)p.Dropshadow.Visible=w end,
UIBlur=function(w:boolean)if p.BlurModel then p.BlurModel.Model:Destroy()p.
BlurModel=nil end p.Body.BackgroundTransparency=w and b.Theme.Controls.Sidebar[2
].Value or 0 if w and not c.Minimized then p.BlurModel=d.UIBlur(p.Body)end end}
local x=g.Wrap(c,w,p.Body)x.Type='Window'x.Theme=b.Theme x.Structures=p x.Tabs={
}x.addToHistory=i(x)x.__container=p.Content do v=j(p.Body.__instance,Vector2.
new(350,250))v.CreateClient()end do local y=true local z=function()y=not y local
z,A,B,C,D=y and UDim.new(0,0)or UDim.new(0,-200),y and UDim2.new(0,200,1,0)or
UDim2.new(0,0,1,0),y and UDim2.new(1,-201,1,0)or UDim2.new(1,0,1,0),y and UDim2.
new(0,10,1,0)or UDim2.new(0,10,0.5,0),TweenInfo.new(0.6,Enum.EasingStyle.
Exponential,Enum.EasingDirection.Out)p.Separator.Visible=y and true or false p.
CornerClip.Visible=y and true m:Create(p.ContentBody,D,{Size=B}):Play()m:Create(
p.SidebarMargins:FindFirstChild'UIPadding',D,{PaddingLeft=z}):Play()local E=m:
Create(p.SidebarMargins,D,{Size=A})m:Create(p.Titlebar.CornerClipLeft,D,{Size=C}
):Play()E:Play()if not y then E.Completed:Connect(function()p.CornerClip.Visible
=false end)end end p.Titlebar.SidebarButton.MouseButton1Click:Connect(z)end do
local y,z=p.Titlebar.SearchField.Field,{}local A,B=function(A,B)local C={}for D,
E in ipairs(B)do if E:IsA'GuiObject'then C[E]=E.Visible end end z[A]=C end,
function(A,B)local C=z[A]if not C then return end for D,E in ipairs(B)do if E:
IsA'GuiObject'then E.Visible=C[E]~=false end end end y:GetPropertyChangedSignal
'Text':Connect(function()local C,D,E={},{},p.Content:FindFirstChildOfClass
'ScrollingFrame'if not E then return end local F=E:GetDescendants()if not z[E]
then A(E,F)end local G=y.Text:lower()if G==''then B(E,F)return end for H,I in
ipairs(F)do if I:IsA'GuiObject'then local J=I:GetAttribute'SearchIndex'if
typeof(J)=='string'and J:lower():find(G)then table.insert(C,I)end end end for H,
I in ipairs(C)do D[I]=true local J=I.Parent while J and J~=E do if J:IsA
'GuiObject'then D[J]=true end J=J.Parent end end for H,I in ipairs(F)do if I:IsA
'GuiObject'then I.Visible=false end end for H,I in ipairs(C)do I.Visible=true
local J=I.Parent while J and J~=E do if J:IsA'GuiObject'then J.Visible=true end
J=J.Parent end local K=z[E]for L,M in ipairs(I:GetDescendants())do if M:IsA
'GuiObject'then local N=K and K[M]if N then M.Visible=true end end end end end)
end do local y,z,A=p.WindowControls:FindFirstChild'Exit'::ImageButton,p.
WindowControls:FindFirstChild'Minimize'::ImageButton,p.WindowControls:
FindFirstChild'Zoom'::ImageButton local B=function()y:FindFirstChild'Icon'.
Visible=p.WindowControls.GuiState~=Enum.GuiState.Hover z:FindFirstChild'Icon'.
Visible=p.WindowControls.GuiState~=Enum.GuiState.Hover A:FindFirstChild'Icon'.
Visible=p.WindowControls.GuiState~=Enum.GuiState.Hover end A.MouseButton1Click:
Connect(function()c.Maximized=not c.Maximized w.Maximized(c.Maximized,true)end)z
.MouseButton1Click:Connect(function()c.Minimized=not c.Minimized w.Minimized(c.
Minimized,true)end)if b.Structures and b.Structures.WindowPill then local C:
ImageButton=b.Structures.WindowPill C.MouseButton1Click:Connect(function()c.
Minimized=not c.Minimized w.Minimized(c.Minimized,true)end)end y.
MouseButton1Click:Connect(function()w.Minimized(true)task.delay(0.25,p.Body.
Destroy)end)p.WindowControls.MouseEnter:Connect(B)p.WindowControls.MouseLeave:
Connect(B)end do local y,z,A,B=(p.LayoutIgnore:FindFirstChild'TopArea')y.
InputBegan:Connect(function(C)if(C.UserInputType==Enum.UserInputType.
MouseButton1 or C.UserInputType==Enum.UserInputType.Touch)and c.Draggable and
not c.Maximized then u=true z=C.Position A=p.Body.Position if B then B:
Disconnect()end B=C.Changed:Connect(function()if C.UserInputState==Enum.
UserInputState.End then u=false end end)end end)l.InputChanged:Connect(function(
C)if C.UserInputType==Enum.UserInputType.MouseMovement or C.UserInputType==Enum.
UserInputType.Touch then if u then local D=C.Position-z local E=UDim2.new(A.X.
Scale,A.X.Offset+D.X,A.Y.Scale,A.Y.Offset+D.Y)p.Body.Position=E end end end)end
g.Apply(c,x)local y=function()for y,z in pairs(p.Body:GetDescendants())do if not
pcall(function()return z.Size end)then continue end local A=z.Size z.Size=UDim2.
fromOffset(0,0)z.Size=A end end task.defer(y)task.delay(1,y)return x end end
function a.k():typeof(b())local c=a.cache.k if not c then c={c=b()}a.cache.k=c
end return c.c end end do local b=function()a.b()return function(b,c:
SectionProperties__DARKLUA_TYPE_s):Section__DARKLUA_TYPE_t local d,e,f=a.e(),a.
a(),a.d()local g,h,i,j,k=d.Create,f.TweenService,b.Type=='Window'and b.
Structures.SidebarList or b.__instance or b,{},function(g:Frame,h:{
RBXScriptConnection},i:(...any)->(),...)local j=table.pack(...)for k,l in
ipairs(g:GetChildren())do if l:IsA'GuiObject'then table.insert(h,l:
GetPropertyChangedSignal'AbsoluteSize':Connect(function(...)i(table.unpack(j,1,j
.n))end))table.insert(h,l:GetPropertyChangedSignal'Visible':Connect(function(...
)i(table.unpack(j,1,j.n))end))end end table.insert(h,g.ChildAdded:Connect(
function(k)if k:IsA'GuiObject'then table.insert(h,k:GetPropertyChangedSignal
'AbsoluteSize':Connect(function(...)i(table.unpack(j,1,j.n))end))table.insert(h,
k:GetPropertyChangedSignal'Visible':Connect(function(...)i(table.unpack(j,1,j.n)
)end))i(table.unpack(j,1,j.n))end end))table.insert(h,g.ChildRemoved:Connect(
function(...)i(table.unpack(j,1,j.n))end))end c=c or{}c.Title=c.Title or
'Section Title'c.Disclosure=c.Disclosure~=false c.Expanded=c.Expanded~=false j.
SidebarGroup=e.Apply(c,g'TextButton'{AutomaticSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,ClipsDescendants=true,Size=
UDim2.new(1,0,0,23),Text='',AutoButtonColor=false,Parent=i,g'UIListLayout'{
SortOrder=Enum.SortOrder.LayoutOrder,HorizontalAlignment=Enum.
HorizontalAlignment.Right},g'Frame'{Name='SectionHeader',AutomaticSize=Enum.
AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromScale(1,0),g'Frame'{Name='Disclosure',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,FontFace=Font.new
'rbxasset://fonts/families/SourceSansPro.json',LayoutOrder=1,Size=UDim2.
fromOffset(13,14),TextColor3=Color3.fromRGB(0,0,0),TextSize=14,g'ImageLabel'{
Name='DisclosureImage',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://115960806571685',Position=UDim2.
fromScale(0.5,0.5),Size=UDim2.fromOffset(11,7),__dynamicKeys={ImageColor3=b.
Theme.Text.Tertiary[1],ImageTransparency=b.Theme.Text.Tertiary[2]}}},g
'UIListLayout'{FillDirection=Enum.FillDirection.Horizontal,HorizontalFlex=Enum.
UIFlexAlignment.SpaceBetween,Padding=UDim.new(0,10),SortOrder=Enum.SortOrder.
LayoutOrder},g'UIPadding'{PaddingBottom=UDim.new(0,6),PaddingLeft=UDim.new(0,8),
PaddingRight=UDim.new(0,12),PaddingTop=UDim.new(0,3)},g'TextLabel'{Name='Title',
AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.Bold,Enum.FontStyle
.Normal),LineHeight=0,RichText=true,Size=UDim2.fromOffset(0,14),Text=
'Section Title',TextSize=12,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=
Enum.TextXAlignment.Left,__dynamicKeys={TextColor3=b.Theme.Text.Tertiary[1],
TextTransparency=b.Theme.Text.Tertiary[2]}}}})::Frame j.Layout=j.SidebarGroup:
FindFirstChild'UIListLayout'::UIListLayout j.SectionHeader=j.SidebarGroup:
FindFirstChild'SectionHeader'::Frame j.Title=j.SectionHeader:FindFirstChild
'Title'::TextLabel j.Disclosure=j.SectionHeader:FindFirstChild'Disclosure'::
TextButton j.DisclosureImage=j.Disclosure:FindFirstChild'DisclosureImage'::
ImageLabel local l={}local m={Title=function(m:string)j.Title.Text=m end,
Disclosure=function(m:boolean)j.Disclosure.Visible=m j.SidebarGroup.Active=m end
,Expanded=function(m:boolean,n:boolean?)n=(n==nil and true)or false local o,p=j.
SidebarGroup.__instance,j.DisclosureImage o.AutomaticSize=Enum.AutomaticSize.
None for q,r:RBXScriptConnection in pairs(l)do r:Disconnect()table.remove(l,q)
end local q=function(q:boolean)local r=m and j.Layout.AbsoluteContentSize.Y or
23 local s=h:Create(o,TweenInfo.new(q and 0.35 or 0,Enum.EasingStyle.Exponential
,Enum.EasingDirection.Out),{Size=UDim2.new(1,0,0,r)})s:Play()end if m then k(o,l
,q,false)end q(n)h:Create(p,TweenInfo.new(n and 0.35 or 0,Enum.EasingStyle.
Exponential,Enum.EasingDirection.Out),{Rotation=m and 0 or-90}):Play()end}local
n=e.Wrap(c,m,j.SidebarGroup)n.Type='Section'n.Theme=b.Theme n.Structures=j n.
__window=b j.SidebarGroup.MouseButton1Click:Connect(function()if not c.
Disclosure then return end n.Expanded=not n.Expanded end)e.Apply(c,n)return n
end end function a.l():typeof(b())local c=a.cache.l if not c then c={c=b()}a.
cache.l=c end return c.c end end do local b=function()a.b()return function(b,c:
TabProperties__DARKLUA_TYPE_u):Tab__DARKLUA_TYPE_v local d,e=a.e(),a.a()local f,
g,h,i=d.Create,b.Type=='Window'and b or b.__window,b.Type=='Window'and b.
Structures.SidebarList or b.Type=='Tab'and b.__instance.Parent or b.__instance
or b,{}c=c or{}c.Title=c.Title or'Label'c.Indentation=c.Indentation or 0 c.
Selected=c.Selected==true i.Body=e.Apply(c,f'TextButton'{Name='SidebarItem',
AutoButtonColor=false,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxasset://fonts/families/SourceSansPro.json',LayoutOrder=g.
Tabs and#g.Tabs or 1,Size=UDim2.new(1,0,0,28),Text='',TextColor3=Color3.fromRGB(
0,0,0),TextSize=14,Parent=h,__dynamicKeys={BackgroundColor3=b.Theme.Controls.
SelectionFocused[1],BackgroundTransparency=b.Theme.Controls.SelectionFocused[2]}
,__contextKeys={BackgroundColor3=function()return c.Selected and b.Theme.
Controls.SelectionFocused[1].Value or 1 end,BackgroundTransparency=function()
return c.Selected and b.Theme.Controls.SelectionFocused[2].Value or 1 end},f
'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,5)},f'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,HorizontalFlex=Enum.
UIFlexAlignment.SpaceBetween,Padding=UDim.new(0,14),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},f'UIPadding'{Name=
'UIPadding',PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,8)},f'Frame'{Name
='Leading',AutomaticSize=Enum.AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Size=UDim2.new(1,-34,0,0),f'TextLabel'{Name='Title',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new
'rbxassetid://12187365364',LayoutOrder=2,LineHeight=0,RichText=true,Size=UDim2.
new(1,-22,0,20),TextSize=15,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=
Enum.TextXAlignment.Left,__dynamicKeys={TextColor3=b.Theme.Text.SelectionPrimary
[1],TextTransparency=b.Theme.Text.SelectionPrimary[2]},__contextKeys={TextColor3
=function()return c.Selected and b.Theme.Text.SelectionPrimary[1].Value or b.
Theme.Text.Primary[1].Value end,TextTransparency=function()return c.Selected and
b.Theme.Text.SelectionPrimary[2].Value or b.Theme.Text.Primary[2].Value end}},f
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,2),SortOrder=Enum.SortOrder.LayoutOrder},f'ImageLabel'{Name=
'Symbol',Visible=false,AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://127049167227557',LayoutOrder=1,Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(20,20),__dynamicKeys={ImageColor3
=b.Theme.Controls.Selection[1],ImageTransparency=b.Theme.Controls.Selection[2]},
__contextKeys={ImageColor3=function()return c.Selected and b.Theme.Text.
SelectionPrimary[1].Value or b.Theme.Controls.Selection[1].Value end,
ImageTransparency=function()return c.Selected and b.Theme.Text.SelectionPrimary[
2].Value or b.Theme.Controls.Selection[2].Value end}}},f'Frame'{Name='Trailing',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=1,Size=UDim2.fromOffset(20,16)}})::TextButton i.Trailing=i.Body:
FindFirstChild'Trailing'::Frame i.Leading=i.Body:FindFirstChild'Leading'::Frame
i.Title=i.Leading:FindFirstChild'Title'::TextLabel i.Symbol=i.Leading:
FindFirstChild'Symbol'::ImageLabel i.Padding=i.Body:FindFirstChild'UIPadding'::
UIPadding i.Page=f'ScrollingFrame'{Name='ContentList',AutomaticCanvasSize=Enum.
AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
CanvasSize=UDim2.new(),ClipsDescendants=false,ScrollBarImageColor3=Color3.
fromRGB(0,0,0),ScrollBarImageTransparency=0.6,ScrollBarThickness=7,Size=UDim2.
fromScale(1,1),f'UIListLayout'{Name='UIListLayout',Padding=UDim.new(0,9),
SortOrder=Enum.SortOrder.LayoutOrder},f'UIPadding'{Name='Margins',PaddingBottom=
UDim.new(0,17),PaddingLeft=UDim.new(0,17),PaddingRight=UDim.new(0,17),PaddingTop
=UDim.new(0,17)}}::ScrollingFrame local j=e.Wrap(c,{Title=function(j:string)i.
Title.Text=j end,Icon=function(j:string?)i.Symbol.Visible=j and true or false if
j then i.Symbol.Image=j end end,Indentation=function(j:number)i.Padding.
PaddingLeft+=UDim.new(0,(11*j))end,Selected=function(j:boolean)i.Body.
Transparency=j and b.Theme.Controls.SelectionFocused[2].Value or 1 i.Title.
TextColor3=j and b.Theme.Text.SelectionPrimary[1].Value or b.Theme.Text.Primary[
1].Value i.Title.TextTransparency=j and b.Theme.Text.SelectionPrimary[2].Value
or b.Theme.Text.Primary[2].Value i.Symbol.ImageColor3=j and b.Theme.Text.
SelectionPrimary[1].Value or b.Theme.Controls.Selection[1].Value i.Symbol.
ImageTransparency=j and b.Theme.Text.SelectionPrimary[2].Value or b.Theme.
Controls.Selection[2].Value i.Page.Parent=j and g and g.__container or nil end},
i.Body)j.Type='Tab'j.Theme=b.Theme j.Structures=i j.__container=i.Page.
__instance j.__window=b.__window e.Apply(c,j)if g then table.insert(g.Tabs,j)if
j.Selected then g.addToHistory(j.__container)end i.Body.MouseButton1Click:
Connect(function()if j.Selected then return end for k,l:Tab__DARKLUA_TYPE_v in
pairs(g.Tabs)do l.Selected=false end j.Selected=true g.addToHistory(j.
__container)end)end if b.Type=='Tab'then j.Indentation=b.Indentation+1 end
return j end end function a.m():typeof(b())local c=a.cache.m if not c then c={c=
b()}a.cache.m=c end return c.c end end do local b=function()return function(b)
local c=a.e()local d,e=c.Create,{}e.Body=d'Frame'{Name='TitleStack',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromOffset(0,0),d'UIListLayout'{Name='UIListLayout',Padding=UDim.new(
0,2),SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.
VerticalAlignment.Center},d'UIPadding'{Name='UIPadding'},d'TextLabel'{Name=
'Subtitle',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',LayoutOrder=1,
RichText=true,Size=UDim2.new(0,0,0,14),Text='Subtitle',TextSize=13,TextWrapped=
true,TextXAlignment=Enum.TextXAlignment.Left,Visible=false,__dynamicKeys={
TextColor3=b.Theme.Text.Secondary[1],TextTransparency=b.Theme.Text.Secondary[2]}
},d'TextLabel'{Name='Title',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3
=Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',
RichText=true,Size=UDim2.new(0,0,0,16),Text='Title',TextColor3=Color3.fromRGB(0,
0,0),TextSize=15,TextTransparency=0.15,TextTruncate=Enum.TextTruncate.AtEnd,
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,__dynamicKeys={
TextColor3=b.Theme.Text.Primary[1],TextTransparency=b.Theme.Text.Primary[2]}}}::
Frame e.Title=e.Body:FindFirstChild'Title'::TextLabel e.Subtitle=e.Body:
FindFirstChild'Subtitle'::TextLabel e.Padding=e.Body:FindFirstChild'UIPadding'::
UIPadding return e end end function a.n():typeof(b())local c=a.cache.n if not c
then c={c=b()}a.cache.n=c end return c.c end end do local b=function()a.b()
return function(b,c:PageSectionProperties__DARKLUA_TYPE_E):
PageSection__DARKLUA_TYPE_F local d,e,f=a.e(),a.a(),a.n()local g,h,i=d.Create,b.
__container or b.__instance or b,f(b)c=c or{}c.Title=c.Title or'Title'local j,k=
h:FindFirstChild'PageSections',true if not j then k=false j=g'Frame'{Name=
'PageSections',BackgroundTransparency=1,Size=UDim2.fromScale(1,0),AutomaticSize=
Enum.AutomaticSize.Y,Parent=h,g'UIListLayout'{Name='UIListLayout',Padding=UDim.
new(0,25),SortOrder=Enum.SortOrder.LayoutOrder}}end local l=g'Frame'{Name=
'PageSection',BackgroundTransparency=1,Size=UDim2.fromScale(1,0),AutomaticSize=
Enum.AutomaticSize.Y,Parent=k and j or j.__instance,g'UIListLayout'{Name=
'UIListLayout',Padding=UDim.new(0,12),SortOrder=Enum.SortOrder.LayoutOrder}}i.
Body.Parent=l.__instance i.Padding.PaddingLeft=UDim.new(0,8)i.Padding.
PaddingRight=UDim.new(0,8)i.Title.FontFace=Font.new(i.Title.FontFace.Family,Enum
.FontWeight.SemiBold)i.Body.LayoutOrder=-1 local m=e.Wrap(c,{Title=function(m:
string)i.Title.Text=m end,Subtitle=function(m:string)i.Subtitle.Visible=true i.
Subtitle.Text=m end},l)m.Type='PageSection'm.Theme=b.Theme m.Structures=i m.
__container=l.__instance e.Apply(c,m)return m end end function a.o():typeof(b())
local c=a.cache.o if not c then c={c=b()}a.cache.o=c end return c.c end end do
local b=function()a.b()return function(b,c:Frame__DARKLUA_TYPE_f):
Form__DARKLUA_TYPE_x local d,e=a.e(),a.a()local f,g,h,i,j=d.Create,b.__container
or b.__instance or b,{},{},{}c=c or{}h.Body=e.Apply(c,f'Frame'{Name='Form',
AutomaticSize=Enum.AutomaticSize.Y,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Size=UDim2.fromScale(1,0),Parent=g,__dynamicKeys={
BackgroundColor3=b.Theme.Controls.View[1],BackgroundTransparency=b.Theme.
Controls.View[2]},f'UIListLayout'{Name='UIListLayout',SortOrder=Enum.SortOrder.
LayoutOrder},f'UIPadding'{Name='Margins',PaddingLeft=UDim.new(0,10),PaddingRight
=UDim.new(0,10)},f'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,6)},f
'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
__dynamicKeys={Color=b.Theme.Controls.ViewBorder[1],Transparency=b.Theme.
Controls.ViewBorder[2]}}})::Frame local k=e.Wrap(c,{},h.Body)k.Type='Form'k.
Theme=b.Theme k.Structures=h local l=function()for l,m in ipairs(j)do local n,o=
m.section.Visible,j[l+1]local p=o and o.section.Visible m.divider.Visible=n and
p==true end end h.Body.ChildAdded:Connect(function(m)if m:IsA'Frame'and m:
FindFirstChild'LayoutIgnore'then local n=m.LayoutIgnore:FindFirstChild'Divider'
if n then table.insert(i,n)table.insert(j,{section=m,divider=n})m:
GetPropertyChangedSignal'Visible':Connect(function()l()end)l()end end end)e.
Apply(c,k)return k end end function a.p():typeof(b())local c=a.cache.p if not c
then c={c=b()}a.cache.p=c end return c.c end end do local b=function()a.b()
return function(b,c:RowProperties__DARKLUA_TYPE_y):Row__DARKLUA_TYPE_z local d,e
=a.e(),a.a()local f,g,h=d.Create,b.__container or b.__instance or b,{}c=c or{}h.
Body=e.Apply(c,f'Frame'{Name='Row',AutomaticSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(1,0),
Parent=g,f'Frame'{Name='LeftAccessory',AutomaticSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(0,1),f
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Horizontal,
HorizontalAlignment=Enum.HorizontalAlignment.Left,Padding=UDim.new(0,10),
SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.
Center,Wraps=true},f'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,10),
PaddingRight=UDim.new(0,10),PaddingTop=UDim.new(0,10)}},f'Frame'{Name=
'RightAccessory',AnchorPoint=Vector2.new(1,0),AutomaticSize=Enum.AutomaticSize.
XY,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,LayoutOrder=1,Position=
UDim2.fromScale(1,0),Size=UDim2.fromScale(0,1),f'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,HorizontalAlignment=
Enum.HorizontalAlignment.Right,Padding=UDim.new(0,10),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center,Wraps=true},f
'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,10),PaddingLeft=UDim.new(0
,11),PaddingTop=UDim.new(0,10)}},f'Folder'{Name='LayoutIgnore',f'Frame'{Name=
'Divider',AnchorPoint=Vector2.new(0,1),BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Position=UDim2.fromScale(0,1),Size=UDim2.new(1,0,0,1),Visible=
false,__dynamicKeys={BackgroundColor3=b.Theme.Controls.ViewBorder[1],
BackgroundTransparency=b.Theme.Controls.ViewBorder[2]}}}})::Frame h.
LeftAccessories=h.Body:FindFirstChild'LeftAccessory'::Frame h.RightAccessories=h
.Body:FindFirstChild'RightAccessory'::Frame local i=function()local i,j,k=h.
LeftAccessories.Parent.AbsoluteSize.X,h.RightAccessories.AbsoluteSize.X,75 local
l=math.max(i-j,k)if i-j<k then h.LeftAccessories.Size=UDim2.new(0,k,1,0)else h.
LeftAccessories.Size=UDim2.new(0,l,1,0)end end i()h.RightAccessories:
GetPropertyChangedSignal'AbsoluteSize':Connect(i)h.LeftAccessories.Parent:
GetPropertyChangedSignal'AbsoluteSize':Connect(i)local j=e.Wrap(c,{SearchIndex=
function(j:string)h.Body:SetAttribute('SearchIndex',j)end},h.Body)j.Type='Row'j.
Theme=b.Theme j.Structures=h j.Left=function()local k=table.clone(j)k.
__container=h.LeftAccessories return k end j.Right=function()local k=table.
clone(j)k.__container=h.RightAccessories return k end e.Apply(c,j)return j end
end function a.q():typeof(b())local c=a.cache.q if not c then c={c=b()}a.cache.q
=c end return c.c end end do local b=function()a.b()return function(b,c:
StackProperties__DARKLUA_TYPE_A):Stack__DARKLUA_TYPE_B local d,e=a.e(),a.a()
local f,g,h=d.Create,b.__container or b.__instance or b,{}c=c or{}c.Padding=c.
Padding or UDim.new(0,10)c.VerticalAlignment=c.VerticalAlignment or Enum.
VerticalAlignment.Center c.HorizontalAlignment=c.HorizontalAlignment or Enum.
HorizontalAlignment.Right h.Body=e.Apply(c,f'Frame'{Name='HStack',
BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.XY,Parent=g,f
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Horizontal,
SortOrder=Enum.SortOrder.LayoutOrder,Wraps=true}})::Frame h.Layout=h.Body:
FindFirstChild'UIListLayout'::UIListLayout local i=e.Wrap(c,{Padding=function(i:
UDim)h.Layout.Padding=i end,HorizontalAlignment=function(i:Enum.
HorizontalAlignment)h.Layout.HorizontalAlignment=i end,VerticalAlignment=
function(i:Enum.VerticalAlignment)h.Layout.VerticalAlignment=i end},h.Body)i.
Type='HStack'i.Theme=b.Theme i.Structures=h e.Apply(c,i)return i end end
function a.r():typeof(b())local c=a.cache.r if not c then c={c=b()}a.cache.r=c
end return c.c end end do local b=function()a.b()return function(b,c:
StackProperties__DARKLUA_TYPE_A):Stack__DARKLUA_TYPE_B local d,e=a.e(),a.a()
local f,g,h=d.Create,b.__container or b.__instance or b,{}c=c or{}c.Padding=c.
Padding or UDim.new(0,10)c.VerticalAlignment=c.VerticalAlignment or Enum.
VerticalAlignment.Center c.HorizontalAlignment=c.HorizontalAlignment or Enum.
HorizontalAlignment.Right h.Body=e.Apply(c,f'Frame'{Name='VStack',
BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.XY,Parent=g,f
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Vertical,
SortOrder=Enum.SortOrder.LayoutOrder,Wraps=true}})::Frame h.Layout=h.Body:
FindFirstChild'UIListLayout'::UIListLayout local i=e.Wrap(c,{Padding=function(i:
UDim)h.Layout.Padding=i end,HorizontalAlignment=function(i:Enum.
HorizontalAlignment)h.Layout.HorizontalAlignment=i end,VerticalAlignment=
function(i:Enum.VerticalAlignment)h.Layout.VerticalAlignment=i end},h.Body)i.
Type='VStack'i.Theme=b.Theme i.Structures=h e.Apply(c,i)return i end end
function a.s():typeof(b())local c=a.cache.s if not c then c={c=b()}a.cache.s=c
end return c.c end end do local b=function()a.b()return function(b,c:
TitleStackProperties__DARKLUA_TYPE_C):TitleStack__DARKLUA_TYPE_D local d,e=a.a()
,a.n()local f=e(b)c=c or{}c.Title=c.Title or'Title'f.Body.Parent=b.__container
or b.__instance or b local g=d.Wrap(c,{Title=function(g:string)f.Title.Text=g
end,Subtitle=function(g:string)f.Subtitle.Visible=true f.Subtitle.Text=g end},f.
Body)g.Type='TitleStack'g.Theme=b.Theme g.Structures=f d.Apply(c,g)return g end
end function a.t():typeof(b())local c=a.cache.t if not c then c={c=b()}a.cache.t
=c end return c.c end end do local b=function()a.b()return function(b,c:
LabelProperties__DARKLUA_TYPE_G):Label__DARKLUA_TYPE_H local d,e=a.e(),a.a()
local f,g,h=d.Create,b.__container or b.__instance or b,{}c=c or{}c.Text=c.Text
or'Label'h.Body=f'TextLabel'{Name='Label',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new
'rbxassetid://12187365364',RichText=true,TextSize=15,TextTruncate=Enum.
TextTruncate.AtEnd,TextWrapped=true,Parent=g,__dynamicKeys={TextColor3=b.Theme.
Text.Secondary[1],TextTransparency=b.Theme.Text.Secondary[2]}}::TextLabel local
i=e.Wrap(c,{},h.Body)i.Type='Label'i.Theme=b.Theme i.Structures=h e.Apply(c,i)
return i end end function a.u():typeof(b())local c=a.cache.u if not c then c={c=
b()}a.cache.u=c end return c.c end end do local b=function()a.b()return function
(b,c:SymbolProperties__DARKLUA_TYPE_I):Symbol__DARKLUA_TYPE_J local d,e=a.e(),a.
a()local f,g,h=d.Create,b.__container or b.__instance or b,{}c=c or{}c.Style=c.
Style or'Primary'c.Size=c.Size or UDim2.fromOffset(20,20)h.Body=f'ImageLabel'{
Name='Image',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Parent=g,__dynamicKeys={ImageColor3=b.Theme.Text.Primary[1],
ImageTransparency=b.Theme.Text.Primary[2]},__contextKeys={ImageColor3=function()
return c.Style=='Primary'and b.Theme.Text.Primary[1].Value or b.Theme.Text.
Secondary[1].Value end,ImageTransparency=function()return c.Style=='Primary'and
b.Theme.Text.Primary[2].Value or b.Theme.Text.Secondary[2].Value end}}::
ImageLabel local i=e.Wrap(c,{Style=function(i:'Primary'|'Secondary')if i==
'Primary'then h.Body.ImageColor3=b.Theme.Text.Primary[1].Value.Value h.Body.
ImageTransparency=b.Theme.Text.Primary[2].Value else h.Body.ImageColor3=b.Theme.
Text.Secondary[1].Value h.Body.ImageTransparency=b.Theme.Text.Secondary[2].Value
end end},h.Body)i.Type='Symbol'i.Theme=b.Theme i.Structures=h e.Apply(c,i)return
i end end function a.v():typeof(b())local c=a.cache.v if not c then c={c=b()}a.
cache.v=c end return c.c end end do local b=function()a.b()return function(b,c:
ToggleProperties__DARKLUA_TYPE_K):Row__DARKLUA_TYPE_z local d,e,f=a.e(),a.a(),a.
d()local g,h,i,j,k=d.Create,f.TweenService,b.__container or b.__instance or b,b.
Theme.Controls.Toggle,{}c=c or{}c.Value=c.Value==true k.Body=e.Apply(c,g'Frame'{
Name='Toggle',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromOffset(28,16),Parent=i,g'ImageButton'{Name='Switch',
AutoButtonColor=false,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://104426531889908',ImageColor3=Color3.fromRGB(0,0,0),
ImageTransparency=0.91,Size=UDim2.fromOffset(28,16),__dynamicKeys={ImageColor3=j
.SwitchOff[1],ImageTransparency=j.SwitchOff[2]},__contextKeys={ImageColor3=
function()return c.Value and j.SwitchOn[1].Value or j.SwitchOff[1].Value end,
ImageTransparency=function()return c.Value and j.SwitchOn[2].Value or j.
SwitchOff[2].Value end},g'ImageLabel'{Name='Knob',AnchorPoint=Vector2.new(0,0.5)
,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://99107881432922',Position=UDim2.new(0,1,0.5,0),Size=UDim2.
fromOffset(14,14),__dynamicKeys={ImageColor3=j.Knob[1],ImageTransparency=j.Knob[
2]},g'ImageLabel'{Name='Effects',AnchorPoint=Vector2.new(0.5,0.5),
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://138042641797315',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromOffset(16,16),__dynamicKeys={ImageColor3=j.KnobEffects[1],ImageTransparency=
j.KnobEffects[2]}}},g'UIGradient'{Name='UIGradient',Rotation=90,__dynamicKeys={
Color=j.DepthEffect[1]}}}})::Frame k.Switch=k.Body:FindFirstChild'Switch'::
ImageButton k.Knob=k.Switch:FindFirstChild'Knob'::ImageLabel local l local m={
Value=function(m:boolean,n:boolean?)n=(n==nil and true)or false local o,p,q=
TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{
Position=m and UDim2.new(0,13,0.5,0)or UDim2.new(0,1,0.5,0)},{ImageColor3=m and
j.SwitchOn[1].Value or j.SwitchOff[1].Value,ImageTransparency=m and j.SwitchOn[2
].Value or j.SwitchOff[2].Value}if n then h:Create(k.Knob,o,p):Play()h:Create(k.
Switch,o,q):Play()else k.Knob.Position=p.Position k.Switch.ImageColor3=q.
ImageColor3 k.Switch.ImageTransparency=q.ImageTransparency end if c.ValueChanged
and n then c.Value=m task.spawn(c.ValueChanged,l,m)end end}l=e.Wrap(c,m,k.Body)l
.Type='Toggle'l.Theme=b.Theme l.Structures=k do k.Switch.MouseButton1Click:
Connect(function()l.Value=not l.Value end)end m.Value(not not c.Value,false)e.
Apply(c,l)return l end end function a.w():typeof(b())local c=a.cache.w if not c
then c={c=b()}a.cache.w=c end return c.c end end do local b=function()a.b()
return function(b,c:TextFieldProperties__DARKLUA_TYPE_M):
TextField__DARKLUA_TYPE_N local d,e=a.a(),a.h()(b)c=c or{}c.Value=c.Value~=nil
and c.Value or''c.Placeholder=c.Placeholder or'Placeholder'e.Field.TextTruncate=
Enum.TextTruncate.AtEnd e.Field.TextXAlignment=Enum.TextXAlignment.Right e.Body.
Parent=b.__container or b.__instance or b local f f=d.Wrap(c,{Placeholder=
function(g:string)e.Field.PlaceholderText=g end,Value=function(g:string)e.Field.
Text=g if c.ValueChanged then c.Value=g task.spawn(c.ValueChanged,f,g)end end},e
.Body)e.Field.Focused:Connect(function()e.Body.AutomaticSize=Enum.AutomaticSize.
XY end)e.Field.FocusLost:Connect(function()e.Body.AutomaticSize=Enum.
AutomaticSize.None if f.Value~=e.Field.Text then f.Value=e.Field.Text end end)f.
Type='TextField'f.Theme=b.Theme f.Structures=e d.Apply(c,f)e.Field:
GetPropertyChangedSignal'Text':Connect(function()if c.TextChanged then task.
spawn(c.TextChanged,f,e.Field.Text or'')end end)return f end end function a.x():
typeof(b())local c=a.cache.x if not c then c={c=b()}a.cache.x=c end return c.c
end end do local b=function()a.b()return function(b,c:
KeybindFieldProperties__DARKLUA_TYPE_O):KeybindFieldProperties__DARKLUA_TYPE_O
local d,e=a.a(),a.d()local f,g=e.UserInputService,a.h()(b)c=c or{}c.Placeholder=
c.Placeholder or'Press a key'g.Field.TextXAlignment=Enum.TextXAlignment.Right g.
Field.TextEditable=false g.Body.Parent=b.__container or b.__instance or b g.Body
.AutomaticSize=Enum.AutomaticSize.XY g.Body.Size=UDim2.fromOffset(0,23)g.Field.
Size=UDim2.fromOffset(0,23)g.Corner.CornerRadius=UDim.new(0,6)local h h=d.Wrap(c
,{Placeholder=function(i:string)g.Field.PlaceholderText=i end,Value=function(i:
Enum.KeyCode)g.Field.Text=i.Name if c.ValueChanged then c.Value=i task.spawn(c.
ValueChanged,h,i)end end},g.Body)f.InputBegan:Connect(function(i,j)if i.
UserInputType~=Enum.UserInputType.Keyboard then return end if i.KeyCode==c.Value
and c.BindPressed then c.BindPressed(h,i.KeyCode,false,j)end end)f.InputEnded:
Connect(function(i,j)if i.UserInputType~=Enum.UserInputType.Keyboard then return
end if g.Field:IsFocused()then h.Value=i.KeyCode g.Field:ReleaseFocus()elseif i.
KeyCode==c.Value and c.BindPressed then c.BindPressed(h,i.KeyCode,true,j)end end
)h.Type='KeybindField'h.Theme=b.Theme h.Structures=g d.Apply(c,h)return h end
end function a.y():typeof(b())local c=a.cache.y if not c then c={c=b()}a.cache.y
=c end return c.c end end do local b=function()a.b()return function(b,c:
SliderProperties__DARKLUA_TYPE_Q):Slider__DARKLUA_TYPE_R local d,e=a.e(),a.a()
local f,g,h,i,j=d.Create,b.__container or b.__instance or b,b.Theme.Controls.
Slider,0,{}c=c or{}c.Value=c.Value or 0 c.Maximum=c.Maximum or 1 c.Minimum=c.
Minimum or 0 j.Body=e.Apply(c,f'ImageLabel'{Name='Slider',Active=true,
AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://92966982499851',Position=UDim2.fromScale(0,0.5),Selectable=
true,Size=UDim2.fromOffset(150,4),Parent=g,__dynamicKeys={ImageColor3=h.Track[1]
,ImageTransparency=h.Track[2]},f'ImageLabel'{Name='TrackClip',BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://113661976068590',
ImageColor3=Color3.fromRGB(252,252,252),ResampleMode=Enum.ResamplerMode.
Pixelated,Size=UDim2.new(0,2,1,0),ZIndex=3,__dynamicKeys={ImageColor3=b.Theme.
Controls.View[1],ImageTransparency=b.Theme.Controls.View[2]}},f'Frame'{Name=
'Fill',BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.
fromScale(0,1),__dynamicKeys={BackgroundColor3=b.Theme.Controls.Selection[1],
BackgroundTransparency=b.Theme.Controls.Selection[2]},f'ImageLabel'{Name=
'Effects',BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://82410105327406',ImageColor3=Color3.fromRGB(0,0,0),Size=UDim2.new(0
,150,1,0),ZIndex=0,__dynamicKeys={ImageColor3=h.TrackEffects[1],
ImageTransparency=h.TrackEffects[2]}},f'Frame'{Name='Thumb',Active=true,
AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,0),Selectable=true,Size=UDim2.fromOffset(20,20),
ZIndex=2,f'ImageLabel'{Name='Background',BackgroundColor3=Color3.fromRGB(255,255
,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://125496304036680',Selectable=true,Size=
UDim2.fromOffset(20,20),__dynamicKeys={ImageColor3=h.Thumb[1],ImageTransparency=
h.Thumb[2]},f'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.
Border,__dynamicKeys={Color=h.ThumbStroke[1],Transparency=h.ThumbStroke[2]}},f
'UICorner'{Name='UICorner',CornerRadius=UDim.new(1,0)}},f'ImageLabel'{Name=
'ThumbEffects',AnchorPoint=Vector2.new(0.5,0),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://85926626300527',Position=UDim2.fromScale(
0.5,0),Size=UDim2.fromOffset(22,22),ZIndex=0,__dynamicKeys={ImageColor3=h.
ThumbEffects[1],ImageTransparency=h.ThumbEffects[2]},f'UICorner'{Name='UICorner'
,CornerRadius=UDim.new(1,0)}}}}})::ImageLabel j.Fill=j.Body:FindFirstChild'Fill'
::Frame j.Thumb=j.Fill:FindFirstChild'Thumb'::Frame j.Dragger=f'UIDragDetector'{
Name='UIDragDetector',ResponseStyle=Enum.UIDragDetectorResponseStyle.
CustomOffset,SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0,
ActivatedCursorIcon='rbxassetid://0',CursorIcon='rbxassetid://0',Parent=j.Thumb}
::UIDragDetector local k local l={Value=function(l:number)local m,n=j.Body.
AbsoluteSize.X,j.Thumb.AbsoluteSize.X local o,p,q=n/2,c.Minimum,c.Maximum local
r,s=(l-p)/(q-p),m-n local t=o+(s*r)j.Fill.Size=UDim2.new(0,t,1,0)if c.
ValueChanged then c.Value=l task.spawn(c.ValueChanged,k,l)end end}k=e.Wrap(c,l,j
.Body)k.Type='Slider'k.Theme=b.Theme k.Structures=j j.Dragger.DragStart:Connect(
function()i=j.Fill.AbsoluteSize.X end)j.Dragger.DragContinue:Connect(function()
local m,n=j.Body.AbsoluteSize.X,j.Thumb.AbsoluteSize.X local o=n/2 local p,q,r=o
,m-o,j.Dragger.DragUDim2.X.Offset local s=i+r local t=math.clamp(s,p,q)local u=(
t-p)/(q-p)k.Value=k.Minimum+(k.Maximum-k.Minimum)*u end)e.Apply(c,k)return k end
end function a.z():typeof(b())local c=a.cache.z if not c then c={c=b()}a.cache.z
=c end return c.c end end do local b=function()local b={sounds={ButtonClick=nil,
ButtonHover=nil,Notification=nil,NotificationDismiss=nil,SwitchToggle=nil,
SliderChange=nil},instancePool={},enabled=true}b.init=function()game:GetService
'SoundService'end b.Register=function(c,d)if b.sounds[c]~=nil then b.sounds[c]=d
end end b.Unregister=function(c)if b.sounds[c]~=nil then b.sounds[c]=nil end end
b.SetEnabled=function(c)b.enabled=c end b.IsEnabled=function()return b.enabled
end b.Play=function(c,d)if not b.enabled then return end local e=b.sounds[c]if
not e or e==''then return end local f,g=(game:GetService'SoundService')if b.
instancePool[c]then g=b.instancePool[c]else g=Instance.new'Sound'g.Name=
'CascadeAudio_'..c g.SoundId=e g.Parent=f b.instancePool[c]=g end if d then g.
Volume=d else g.Volume=0.5 end if g.IsPlaying then g:Stop()end g.TimePosition=0
g:Play()end b.PlayOneShot=function(c,d)if not b.enabled or not c or c==''then
return end local e,f=game:GetService'SoundService',Instance.new'Sound'f.Name=
'CascadeAudio_OneShot'f.SoundId=c f.Volume=d or 0.5 f.Parent=e f.Ended:Once(
function()task.delay(0.1,function()if f and f.Parent then f:Destroy()end end)end
)f:Play()end b.GetSound=function(c)return b.sounds[c]end b.GetAllSounds=function
()return b.sounds end b.Preload=function()local c=game:GetService'SoundService'
for d,e in pairs(b.sounds)do if e and e~=''then if not b.instancePool[d]then
local f=Instance.new'Sound'f.Name='CascadeAudio_'..d f.SoundId=e f.Parent=c b.
instancePool[d]=f end pcall(function()b.instancePool[d]:Preload()end)end end end
b.Cleanup=function()for c,d in pairs(b.instancePool)do if d and d.Parent then d:
Stop()d:Destroy()end end b.instancePool={}end return b end function a.A():
typeof(b())local c=a.cache.A if not c then c={c=b()}a.cache.A=c end return c.c
end end do local b=function()a.b()return function(b,c:
ButtonProperties__DARKLUA_TYPE_S):Button__DARKLUA_TYPE_T local d,e,f,g=a.e(),a.
a(),a.d(),a.A()local h,i,j,k,l=d.Create,f.TweenService,b.__container or b.
__instance or b,b.Theme.Controls.Button,{}c=c or{}c.State=c.State or'Primary'c.
Label=c.Label or'Label'l.Body=e.Apply(c,h'TextButton'{Name='Button',
AutoButtonColor=false,AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=
Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0
,Text='',Parent=j,h'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,5)},h
'Folder'{Name='ShadowLayers',h'Frame'{Name='Layer1',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Size=UDim2.fromScale(1,1),ZIndex=0,h'UICorner'{Name=
'UICorner',CornerRadius=UDim.new(0,5)},h'UIStroke'{Name='UIStroke',
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Transparency=0.95,__dynamicKeys={
Color=k.Shadow}}},h'Frame'{Name='Layer2',BackgroundColor3=Color3.fromRGB(255,255
,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Size=UDim2.fromScale(1,1),ZIndex=-1,h'UICorner'{Name=
'UICorner',CornerRadius=UDim.new(0,5)},h'UIStroke'{Name='UIStroke',
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Thickness=2,Transparency=0.98,
__dynamicKeys={Color=k.Shadow}}}}})::TextButton l.Shadows=l.Body:FindFirstChild
'ShadowLayers'l.Shadow1=l.Shadows:FindFirstChild'Layer1':FindFirstChild
'UIStroke'l.Shadow2=l.Shadows:FindFirstChild'Layer2':FindFirstChild'UIStroke'
local m,n={TextColor3=function()local m=c.State return m=='Primary'and b.Theme.
Text.SelectionPrimary[1].Value or m=='Secondary'and b.Theme.Text.Primary[1].
Value or m=='Destructive'and b.Theme.Accents.Red[1].Value end,TextTransparency=
function()local m=c.State return m=='Primary'and b.Theme.Text.SelectionPrimary[2
].Value or m=='Secondary'and b.Theme.Text.Primary[2].Value or m=='Destructive'
and b.Theme.Accents.Red[2].Value end},{Color=function()local m=c.State return m
=='Primary'and k.FillPrimary.Value or(m=='Secondary'or m=='Destructive')and k.
FillSecondary.Value end}l.Label=h'TextLabel'{Size=UDim2.fromScale(1,1),Name=
'Label',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,
255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',RichText=true,
TextSize=14,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,
TextYAlignment=Enum.TextYAlignment.Center,Parent=l.Body.__instance,__dynamicKeys
={TextColor3=b.Theme.Text.SelectionPrimary[1],TextTransparency=b.Theme.Text.
SelectionPrimary[2]},__contextKeys=m,h'UIPadding'{Name='UIPadding',PaddingBottom
=UDim.new(0,3),PaddingLeft=UDim.new(0,7),PaddingRight=UDim.new(0,7),PaddingTop=
UDim.new(0,3)}}::TextLabel l.Fill=h'UIGradient'{Name='UIGradient',Rotation=90,
Parent=l.Body.__instance,__dynamicKeys={Color=k.FillPrimary},__contextKeys=n}::
UIGradient local o,p={State=function()task.defer(function()l.Label.TextColor3=m.
TextColor3()l.Label.TextTransparency=m.TextTransparency()l.Fill.Color=n.Color()
end)end,Label=function(o:string)l.Label.Text=o end}p=e.Wrap(c,o,l.Body)p.Type=
'Button'p.Theme=b.Theme p.Structures=l l.Body.MouseButton1Click:Connect(function
()g.Play'ButtonClick'if c.Pushed then task.spawn(c.Pushed,p)end end)l.Body.
MouseButton1Down:Connect(function()local q=TweenInfo.new(0.08,Enum.EasingStyle.
Cubic,Enum.EasingDirection.Out)i:Create(l.Shadow1,q,{Transparency=0.8}):Play()i:
Create(l.Shadow2,q,{Transparency=0.9}):Play()end)l.Body.MouseButton1Up:Connect(
function()local q=TweenInfo.new(0.12,Enum.EasingStyle.Sine,Enum.EasingDirection.
Out)i:Create(l.Shadow1,q,{Transparency=0.95}):Play()i:Create(l.Shadow2,q,{
Transparency=0.98}):Play()end)l.Body.MouseLeave:Connect(function()local q=
TweenInfo.new(0.12,Enum.EasingStyle.Sine,Enum.EasingDirection.Out)i:Create(l.
Shadow1,q,{Transparency=0.95}):Play()i:Create(l.Shadow2,q,{Transparency=0.98}):
Play()end)e.Apply(c,p)return p end end function a.B():typeof(b())local c=a.cache
.B if not c then c={c=b()}a.cache.B=c end return c.c end end do local b=function
()a.b()return function(b,c:StepperProperties__DARKLUA_TYPE_U):
Stepper__DARKLUA_TYPE_V local d,e,f=a.e(),a.a(),a.h()local g,h,i,j,k,l,m,n,o=d.
Create,b.__container or b.__instance or b,b.Theme.Controls.Stepper,{},false,{},
0.35,0.083,function(g)local h=tostring(g)local i,j=string.find(h,'%.'),0 if i
then j=#h-i end return j end local p,q=function(p,q)local r,s=o(q),o(p)local t=
math.max(r,s)local u='%.'..t..'f'return string.format(u,p)end,function(p,q)local
r=10^(q or 0)return math.floor(p*r+0.5)/r end c=c or{}c.Value=c.Value or 0 c.
Step=c.Step or 0.1 c.Maximum=c.Maximum or 1 c.Minimum=c.Minimum or 0 c.Fielded=c
.Fielded or false j.Body=e.Apply(c,g'ImageLabel'{Name='Stepper',BackgroundColor3
=Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://85888499115674',Size=UDim2.
fromOffset(13,20),Parent=h,__dynamicKeys={ImageColor3=i.Background[1],
ImageTransparency=i.Background[2]},g'ImageLabel'{Name='Shadow',
BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5,0.5),BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://105571270097608',
LayoutOrder=1,Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(19,27),
__dynamicKeys={ImageColor3=i.Dropshadow[1],ImageTransparency=i.Dropshadow[2]}},g
'ImageButton'{Name='Up',AutoButtonColor=false,BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://133515997946294',Size=UDim2.new(1,0,0,9),
Position=UDim2.fromOffset(0,1),__dynamicKeys={ImageColor3=b.Theme.Text.Primary[1
],ImageTransparency=b.Theme.Text.Primary[2]},__contextKeys={ImageColor3=function
()if c.Value>=c.Maximum then return b.Theme.Text.Tertiary[1].Value else return b
.Theme.Text.Primary[1].Value end end,ImageTransparency=function()if c.Value>=c.
Maximum then return b.Theme.Text.Tertiary[2].Value else return b.Theme.Text.
Primary[2].Value end end}},g'ImageButton'{Name='Down',AnchorPoint=Vector2.new(0,
1),AutoButtonColor=false,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://83836660987173',Position=UDim2.fromScale(0,1),Size=UDim2.
new(1,0,0,9),__dynamicKeys={ImageColor3=b.Theme.Text.Primary[1],
ImageTransparency=b.Theme.Text.Primary[2]},__contextKeys={ImageColor3=function()
if c.Value<=c.Minimum then return b.Theme.Text.Tertiary[1].Value else return b.
Theme.Text.Primary[1].Value end end,ImageTransparency=function()if c.Value<=c.
Minimum then return b.Theme.Text.Tertiary[2].Value else return b.Theme.Text.
Primary[2].Value end end}},g'Frame'{Name='Top',BackgroundColor3=Color3.fromRGB(
255,255,255),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2
.fromOffset(0,6),Size=UDim2.new(1,0,0,4),ZIndex=0,g'UIGradient'{Name=
'UIGradient',Rotation=90,Transparency=NumberSequence.new{NumberSequenceKeypoint.
new(0,0.949),NumberSequenceKeypoint.new(1,0.949)},__dynamicKeys={Color=i.
SegmentShadow}}},g'Frame'{Name='Separator',AnchorPoint=Vector2.new(0,0.5),
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(0,
0.5),Size=UDim2.new(1,0,0,1),ZIndex=0,__dynamicKeys={BackgroundColor3=i.
Separator[1],BackgroundTransparency=i.Separator[2]}},g'Frame'{Name='Bottom',
BackgroundColor3=Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Position=UDim2.fromOffset(0,10),Size=UDim2.new(1,0,0,4),ZIndex
=0,g'UIGradient'{Name='UIGradient',Rotation=-90,Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,0.949),NumberSequenceKeypoint.new(1,0.949)},
__dynamicKeys={Color=i.SegmentShadow}}},g'Frame'{Name='Filler',AnchorPoint=
Vector2.new(0,0.5),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position
=UDim2.fromScale(0,0.5),Size=UDim2.new(1,0,0,2),ZIndex=0,__dynamicKeys={
BackgroundColor3=i.Filler[1],BackgroundTransparency=i.Filler[2]}}})::ImageLabel
j.IPlus=j.Body:FindFirstChild'Up'::ImageButton j.IMinus=j.Body:FindFirstChild
'Down'::ImageButton j.Field=f(b)j.Field.Padding.PaddingBottom=UDim.new(0,2)j.
Field.Padding.PaddingTop=UDim.new(0,2)j.Field.Padding.PaddingRight=UDim.new(0,2)
j.Field.Body.Size=UDim2.fromOffset(0,23)j.Field.Field.Size=UDim2.fromOffset(0,0)
j.Field.Corner.CornerRadius=UDim.new(0,6)j.Field.FieldPadding:Destroy()local r
local s={Fielded=function(s:boolean)if s then j.Field.Body.Parent=h j.Body.
Parent=j.Field.Body.__instance j.Body.LayoutOrder=1 else j.Field.Body.Parent=nil
j.Body.Parent=h j.Body.LayoutOrder=0 end end,Value=function(s:number)if s<=c.
Minimum then j.IMinus.ImageColor3=b.Theme.Text.Tertiary[1].Value j.IMinus.
ImageTransparency=b.Theme.Text.Tertiary[2].Value j.IMinus.Interactable=false
else j.IMinus.ImageColor3=b.Theme.Text.Primary[1].Value j.IMinus.
ImageTransparency=b.Theme.Text.Primary[2].Value j.IMinus.Interactable=true end
if s>=c.Maximum then j.IPlus.ImageColor3=b.Theme.Text.Tertiary[1].Value j.IPlus.
ImageTransparency=b.Theme.Text.Tertiary[2].Value j.IPlus.Interactable=false else
j.IPlus.ImageColor3=b.Theme.Text.Primary[1].Value j.IPlus.ImageTransparency=b.
Theme.Text.Primary[2].Value j.IPlus.Interactable=true end if j.Field then j.
Field.Field.Text=p(s,c.Step)end if c.ValueChanged then c.Value=s task.spawn(c.
ValueChanged,r,s)end end}r=e.Wrap(c,s,j.Body)r.Type='Stepper'r.Theme=b.Theme r.
Structures=j r.Increment=function()assert(c.Minimum)assert(c.Maximum)local t,u=
math.max(o(r.Value),o(c.Step)),r.Value+c.Step local v=q(u,t)r.Value=math.clamp(v
,c.Minimum,c.Maximum)end r.Decrement=function()assert(c.Minimum)assert(c.Maximum
)local t,u=math.max(o(r.Value),o(c.Step)),r.Value-c.Step local v=q(u,t)r.Value=
math.clamp(v,c.Minimum,c.Maximum)end local t,u=function(t:string)k=true local u=
(t=='Up')and r.Increment or r.Decrement l[t]=task.spawn(function()if k then task
.wait(m)end if not k then return end u()while k do task.wait(n)if k then u()end
end end)end,function(t:string)k=false if l[t]then task.cancel(l[t])l[t]=nil end
end j.IPlus.MouseButton1Down:Connect(function()r.Increment()t'Up'end)j.IPlus.
MouseButton1Up:Connect(function()u'Up'end)j.IPlus.MouseLeave:Connect(function()u
'Up'end)j.IMinus.MouseButton1Down:Connect(function()r.Decrement()t'Down'end)j.
IMinus.MouseButton1Up:Connect(function()u'Down'end)j.IMinus.MouseLeave:Connect(
function()u'Down'end)j.Body.AncestryChanged:Connect(function(v,w)if not w then u
'Up'u'Down'for x,y in pairs(l)do if typeof(y)=='RBXScriptConnection'then y:
Disconnect()end end l={}end end)j.Field.Field.FocusLost:Connect(function(v)if v
then assert(c.Minimum)assert(c.Maximum)local w=j.Field.Field.Text local x=
tonumber(w)if x and c.Fielded then c.Value=math.clamp(x,c.Minimum,c.Maximum)if c
.Value then s.Value(c.Value)end end else j.Field.Field.Text=tostring(c.Value)end
end)e.Apply(c,r)return r end end function a.C():typeof(b())local c=a.cache.C if
not c then c={c=b()}a.cache.C=c end return c.c end end do local b=function()a.b(
)return function(b,c:RadioButtonGroupProperties__DARKLUA_TYPE_W):
RadioButtonGroup__DARKLUA_TYPE_X local d,e=a.e(),a.a()local f,g,h,i=d.Create,b.
__container or b.__instance or b,b.Theme.Controls.RadioButtonGroup,{RadioButtons
={}}local j=function(j,k,l)i.RadioButtons[l]=f'Frame'{Name='RadioButton',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=l,Parent=i.Body.__instance,f'UIListLayout'{Name='UIListLayout',
FillDirection=Enum.FillDirection.Horizontal,HorizontalAlignment=Enum.
HorizontalAlignment.Right,Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},f'ImageButton'{Name
='Button',BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://118333468121914',Size=UDim2.fromOffset(14,14),__dynamicKeys={
ImageColor3=h.Background[1],ImageTransparency=h.Background[2]},__contextKeys={
ImageColor3=function()return c.Value==l and b.Theme.Controls.Selection[1].Value
or h.Background[1].Value end,ImageTransparency=function()return c.Value==l and b
.Theme.Controls.Selection[2].Value or h.Background[2].Value end},f'ImageLabel'{
Name='Overlay',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://118333468121914',Size=UDim2.fromOffset(14,14),__dynamicKeys=
{ImageColor3=h.Overlay[1],ImageTransparency=h.Overlay[2]},f'UIGradient'{Name=
'UIGradient',Rotation=90,Transparency=NumberSequence.new{NumberSequenceKeypoint.
new(0,0),NumberSequenceKeypoint.new(1,1)}}},f'ImageLabel'{Name='Dot',AnchorPoint
=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://118333468121914',Position=UDim2.fromScale(0.5,0.5),ScaleType
=Enum.ScaleType.Fit,Size=UDim2.fromOffset(6,6),SliceCenter=Rect.new(7,7,7,7),
__dynamicKeys={ImageColor3=h.Dot[1],ImageTransparency=h.Dot[2]},__contextKeys={
ImageTransparency=function()return c.Value==l and h.Dot[2].Value or 1 end}},f
'ImageLabel'{Name='Stroke',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://132968326823931',Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromScale(1,1),__dynamicKeys={ImageColor3=h.
Stroke[1],ImageTransparency=h.Stroke[2]},__contextKeys={ImageTransparency=
function()return c.Value==l and 1 or h.Stroke[2].Value end}},f'ImageLabel'{Name=
'InnerShadow',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://95115717327743',Position=UDim2.fromScale(
0.5,0.5),Size=UDim2.fromScale(1,1),__dynamicKeys={ImageColor3=h.InnerShadow[1],
ImageTransparency=h.InnerShadow[2]},__contextKeys={ImageTransparency=function()
return c.Value==l and 1 or h.InnerShadow[2].Value end}},f'ImageLabel'{Name=
'DropShadow',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://110994967430153',Position=UDim2.new(0.5,0,
0.5,1),ScaleType=Enum.ScaleType.Fit,Size=UDim2.fromOffset(20,20),__dynamicKeys={
ImageColor3=b.Theme.Controls.Selection[1],ImageTransparency=b.Theme.Controls.
Selection[2]},__contextKeys={ImageTransparency=function()return c.Value==l and
0.76 or 1 end}}},f'TextLabel'{Name='Label',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new
'rbxassetid://12187365364',LayoutOrder=1,RichText=true,Text=k,TextSize=15,
TextTruncate=Enum.TextTruncate.AtEnd,Visible=not not k,__dynamicKeys={TextColor3
=b.Theme.Text.Primary[1],TextTransparency=b.Theme.Text.Primary[2]}}}::Frame
local m=i.RadioButtons[l]:FindFirstChild'Button'::ImageButton if m and m:IsA
'ImageButton'then m.MouseButton1Click:Connect(function()if j then j.Value=l end
end)end end c=c or{}c.Options=c.Options or{}i.Body=e.Apply(c,f'Frame'{Name=
'RadioButtons',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Parent=g,f'UIListLayout'{Name='UIListLayout',FillDirection=
Enum.FillDirection.Horizontal,HorizontalAlignment=Enum.HorizontalAlignment.Right
,Padding=UDim.new(0,16),SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=
Enum.VerticalAlignment.Center,Wraps=true}})::Frame local k local l={Options=
function(l:{[number]:string})for m,n in ipairs(l)do if i.RadioButtons[m]then i.
RadioButtons[m]:Destroy()end j(k,n,m)end end,Value=function(l:number)for m,n in
ipairs(i.RadioButtons)do local o=m==l if n then local p=n:FindFirstChild'Button'
p.ImageColor3=o and b.Theme.Controls.Selection[1].Value or h.Background[1].Value
p.ImageTransparency=o and b.Theme.Controls.Selection[2].Value or h.Background[2]
.Value p:FindFirstChild'Dot'.ImageTransparency=o and h.Dot[2].Value or 1 p:
FindFirstChild'Stroke'.ImageTransparency=o and 1 or h.Stroke[2].Value p:
FindFirstChild'InnerShadow'.ImageTransparency=o and 1 or h.InnerShadow[2].Value
p:FindFirstChild'DropShadow'.ImageTransparency=o and 0.76 or 1 end end if c.
ValueChanged then c.Value=l task.spawn(c.ValueChanged,k,l)end end}k=e.Wrap(c,l,i
.Body)k.Type='RadioButtonGroup'k.Theme=b.Theme k.Structures=i k.Option=function(
m,n:string?)local o=#i.RadioButtons+1 j(k,n,o)table.insert(c.Options or{},n)
return i.RadioButtons[o]end e.Apply(c,k)return k end end function a.D():typeof(
b())local c=a.cache.D if not c then c={c=b()}a.cache.D=c end return c.c end end
do local b=function()a.b()return function(b,c:
PopUpButtonProperties__DARKLUA_TYPE_Y):PopUpButton__DARKLUA_TYPE_Z local d,e,f=a
.e(),a.a(),a.d()local g,h,i,j,k=d.Create,f.UserInputService,f.TweenService,f.
Workspace,f.GuiService local l,m,n,o,p,q,r,s=j.CurrentCamera,b.__container or b.
__instance or b,b.Theme.Controls.MenuButton,{Options={}},-1,6,6,239 local t,u=
function()o.Menu.AutomaticSize=Enum.AutomaticSize.XY task.defer(function()local
t=o.Menu.AbsoluteSize.Y if t>=s then o.Menu.AutomaticSize=Enum.AutomaticSize.X o
.Menu.Size=UDim2.fromOffset(0,s)else o.Menu.Size=UDim2.fromOffset(0,t)o.Menu.
AutomaticSize=Enum.AutomaticSize.X end end)end,function()local t,u=o.Body,o.Menu
if not u or not t then return end local v,w,x,y,z=t.AbsolutePosition,t.
AbsoluteSize,u.AbsoluteSize,(l.ViewportSize)if c.Maximum and c.Maximum>1 then
local A=o.PopUpIndicator or t local B=A.AbsolutePosition z=B.X+p else z=v.X+p
end local A,B,C=v.Y+w.Y+q,math.max(r,y.X-r-x.X),math.max(r,y.Y-r-x.Y)z=math.
clamp(z,r,B)A=math.clamp(A,r,C)u.Position=UDim2.new(0,z,0,A)end local function v
(w,x,y)local z=g'TextButton'{Name='Item',Size=UDim2.fromScale(1,0),
AutoButtonColor=false,AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=
Color3.fromRGB(0,122,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0
,0,0),BorderSizePixel=0,Selectable=false,Text='',LayoutOrder=y,Parent=o.Menu,g
'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,3),PaddingLeft=UDim.new(0,
7),PaddingRight=UDim.new(0,12),PaddingTop=UDim.new(0,3)},g'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,2)
,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.
Center},g'ImageLabel'{Name='Checkmark',BackgroundColor3=Color3.fromRGB(255,255,
255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel
=0,Image='rbxassetid://127464789357538',ImageColor3=Color3.fromRGB(0,0,0),
ImageTransparency=1,Size=UDim2.fromOffset(16,16),Visible=false,__dynamicKeys={
ImageColor3=b.Theme.Text.Primary[1],ImageTransparency=b.Theme.Text.Primary[2]}},
g'Frame'{Name='CheckmarkRepl',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromOffset(16,16),Visible=true},g'TextLabel'{Name='Label',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxassetid://12187365364',LayoutOrder=1,RichText=true,Text=x,
TextColor3=Color3.fromRGB(0,0,0),TextSize=15,TextTransparency=0.15,TextTruncate=
Enum.TextTruncate.AtEnd,__dynamicKeys={TextColor3=b.Theme.Text.Primary[1],
TextTransparency=b.Theme.Text.Primary[2]}},g'UICorner'{Name='UICorner',
CornerRadius=UDim.new(0,5)}}::TextButton local A,B=z:FindFirstChild'Label',z:
FindFirstChild'Checkmark'o.Options[y]=z.__instance z:GetPropertyChangedSignal
'GuiState':Connect(function()if not w.Expanded then return end if z.GuiState==
Enum.GuiState.Hover then z.BackgroundTransparency=b.Theme.Controls.
SelectionFocused[2].Value A.TextColor3=b.Theme.Controls.SelectionFocusedAccent[1
].Value A.TextTransparency=b.Theme.Controls.SelectionFocusedAccent[2].Value B.
ImageColor3=b.Theme.Controls.SelectionFocusedAccent[1].Value B.ImageTransparency
=b.Theme.Controls.SelectionFocusedAccent[2].Value else z.BackgroundTransparency=
1 A.TextColor3=b.Theme.Text.Primary[1].Value A.TextTransparency=b.Theme.Text.
Primary[2].Value B.ImageColor3=b.Theme.Text.Primary[1].Value B.ImageTransparency
=b.Theme.Text.Primary[2].Value end end)z.MouseButton1Click:Connect(function()if
w then if w.Maximum and w.Maximum>1 then local C=w.Value or{}if typeof(C)~=
'table'then C=C and{C}or{}end local D for E,F in ipairs(C)do if F==y then D=E
break end end if D then table.remove(C,D)else if#C<w.Maximum then table.insert(C
,y)else table.remove(C,1)table.insert(C,y)end end w.Value=C else w.Expanded=
false task.wait(0.2)w.Value=y end end end)end c=c or{}c.Maximum=c.Maximum or 1 c
.Expanded=c.Expanded or false o.Body=e.Apply(c,g'TextButton'{Name='PopUpButton',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Selectable=false,Text='',Parent=m,g'UIPadding'{Name='UIPadding',PaddingBottom=
UDim.new(0,3),PaddingLeft=UDim.new(0,3),PaddingRight=UDim.new(0,3),PaddingTop=
UDim.new(0,3)},g'UIListLayout'{Name='UIListLayout',FillDirection=Enum.
FillDirection.Horizontal,Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},g'Frame'{Name=
'PopUpIndicator',BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=1,Selectable=true,Size=UDim2.fromOffset(16,16),__dynamicKeys={
BackgroundColor3=n.IndicatorBackground[1],BackgroundTransparency=n.
IndicatorBackground[2]},g'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,4)},
g'ImageLabel'{Name='Indicators',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://89151647333378',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=b.Theme.Text.Primary[1],ImageTransparency=b.Theme.Text.Primary[2]}}}
,g'TextLabel'{Name='Label',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',
RichText=true,Text='None',TextSize=15,TextTransparency=0.15,TextTruncate=Enum.
TextTruncate.AtEnd,__dynamicKeys={TextColor3=b.Theme.Text.Primary[1],
TextTransparency=b.Theme.Text.Primary[2]}}})::TextButton o.PopUpIndicator=o.Body
:FindFirstChild'PopUpIndicator'::Frame o.CurrentTab=o.Body:FindFirstChild'Label'
::TextLabel o.MenuContainer=g'ScreenGui'{Name='Container',IgnoreGuiInset=true,
ScreenInsets=Enum.ScreenInsets.None,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,
DisplayOrder=201,OnTopOfCoreBlur=true,g'CanvasGroup'{Name='MenuBody',
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),g'ScrollingFrame'{Name='PopUpMenu',AutomaticSize=Enum.
AutomaticSize.X,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.new(),
ScrollBarImageColor3=Color3.fromRGB(0,0,0),ScrollBarImageTransparency=0.5,
ScrollBarThickness=3,__dynamicKeys={BackgroundColor3=n.MenuBackground[1],
BackgroundTransparency=n.MenuBackground[2]},g'UICorner'{Name='UICorner',
CornerRadius=UDim.new(0,6)},g'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.
ApplyStrokeMode.Border,Transparency=0.9},g'UIPadding'{Name='UIPadding',
PaddingBottom=UDim.new(0,5),PaddingLeft=UDim.new(0,5),PaddingRight=UDim.new(0,5)
,PaddingTop=UDim.new(0,5)},g'UIListLayout'{Name='UIListLayout',SortOrder=Enum.
SortOrder.LayoutOrder,Padding=UDim.new(0,1)}}}}::ScreenGui o.MenuBody=o.
MenuContainer:FindFirstChild'MenuBody'::CanvasGroup o.Menu=o.MenuBody:
FindFirstChild'PopUpMenu'::ScrollingFrame local w local x={Options=function(x:{[
number]:string})for y,z in ipairs(o.Options)do z:Destroy()end for y,z in ipairs(
x)do v(w,z,y)t()end end,Expanded=function(x:boolean)local y=x==true if y then o.
MenuContainer.Parent=o.Body.__instance end u()local z,A={GroupTransparency=y and
0 or 1},TweenInfo.new(y and 0 or 0.4,Enum.EasingStyle.Exponential)local B=i:
Create(o.MenuBody,A,z)B:Play()B.Completed:Connect(function()if w.Expanded==false
then o.MenuContainer.Parent=nil end end)end,Value=function(x)local y=w and w.
Maximum and w.Maximum>1 if y then local z={}if typeof(x)=='table'then for A,B in
ipairs(x)do z[B]=true end elseif x then z[x]=true end local A={}for B,C in
ipairs(o.Options)do if z[B]and C and C:FindFirstChild'Label'then table.insert(A,
C:FindFirstChild'Label'.Text)end end if#A==0 then o.CurrentTab.Text='None'else o
.CurrentTab.Text=table.concat(A,', ')end for B,C in ipairs(o.Options)do if not C
or not C:FindFirstChild'Checkmark'then continue end if z[B]then C:FindFirstChild
'Checkmark'.Visible=true C:FindFirstChild'CheckmarkRepl'.Visible=false else C:
FindFirstChild'Checkmark'.Visible=false C:FindFirstChild'CheckmarkRepl'.Visible=
true end end else if not x or not o.Options[x]then o.CurrentTab.Text='None'else
o.CurrentTab.Text=o.Options[x]:FindFirstChild'Label'.Text end for z,A in ipairs(
o.Options)do local B=z==x if not A or not A:FindFirstChild'Checkmark'then
continue end if not B then A:FindFirstChild'Checkmark'.Visible=false A:
FindFirstChild'CheckmarkRepl'.Visible=true else A:FindFirstChild'CheckmarkRepl'.
Visible=false if not x then A:FindFirstChild'Checkmark'.Visible=false else A:
FindFirstChild'Checkmark'.Visible=true end end end end if c.ValueChanged then c.
Value=x task.spawn(c.ValueChanged,w,x)end end}w=e.Wrap(c,x,o.Body)w.Type=
'PopUpButton'w.Theme=b.Theme w.Structures=o w.Option=function(y,z:string?)local
A=#o.Options+1 v(w,z,A)t()table.insert(w.Options,z)return o.Options[A]end w.
Remove=function(y,z:number?)if z and o.Options[z]then o.Options[z]:Destroy()w.
Options[z]=nil end end e.Apply(c,w)o.Body:GetPropertyChangedSignal
'AbsolutePosition':Connect(u)o.Body:GetPropertyChangedSignal'AbsoluteSize':
Connect(u)o.Menu:GetPropertyChangedSignal'AbsoluteSize':Connect(u)h.InputBegan:
Connect(function(y)if w.Expanded and(y.UserInputType==Enum.UserInputType.
MouseButton1 or y.UserInputType==Enum.UserInputType.Touch)then local z,A,B=h:
GetMouseLocation(),k:GetGuiInset(),o.Menu local C,D,E=B.AbsolutePosition,B.
AbsoluteSize,z.Y-A.Y if z.X<C.X or z.X>C.X+D.X or E<C.Y or E>C.Y+D.Y then w.
Expanded=false end end end)o.Body.MouseButton1Click:Connect(function()w.Expanded
=not w.Expanded end)return w end end function a.E():typeof(b())local c=a.cache.E
if not c then c={c=b()}a.cache.E=c end return c.c end end do local b=function()a
.b()return function(b,c:PullDownButtonProperties__DARKLUA_TYPE__):
PullDownButton__DARKLUA_TYPE_0 local d,e,f=a.e(),a.a(),a.d()local g,h,i,j,k=d.
Create,f.UserInputService,f.TweenService,f.Workspace,f.GuiService local l,m,n,o,
p,q,r=j.CurrentCamera,b.__container or b.__instance or b,b.Theme.Controls.
MenuButton,{Options={}},-1,6,6 local s=function()local s,t=o.Body,o.Menu if not
t or not s then return end local u,v,w,x=s.AbsolutePosition,s.AbsoluteSize,t.
AbsoluteSize,l.ViewportSize local y,z,A,B=u.X+p,u.Y+(v.Y*3)+(q*3),math.max(r,x.X
-r-w.X),math.max(r,x.Y-r-w.Y)y=math.clamp(y,r,A)z=math.clamp(z,r,B)t.Position=
UDim2.new(0,y,0,z)end local function t(u,v,w)local x=g'TextButton'{Name='Item',
Size=UDim2.fromScale(1,0),AutoButtonColor=false,AutomaticSize=Enum.AutomaticSize
.XY,BackgroundColor3=Color3.fromRGB(0,122,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Selectable=false,Text='',
LayoutOrder=w,Parent=o.Menu,g'UIPadding'{Name='UIPadding',PaddingBottom=UDim.
new(0,3),PaddingLeft=UDim.new(0,7),PaddingRight=UDim.new(0,12),PaddingTop=UDim.
new(0,3)},g'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.
Horizontal,Padding=UDim.new(0,2),SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center},g'TextLabel'{Name='Label',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxassetid://12187365364',LayoutOrder=1,RichText=true,Text=v,
TextColor3=Color3.fromRGB(0,0,0),TextSize=15,TextTransparency=0.15,TextTruncate=
Enum.TextTruncate.AtEnd,__dynamicKeys={TextColor3=b.Theme.Text.Primary[1],
TextTransparency=b.Theme.Text.Primary[2]}},g'UICorner'{Name='UICorner',
CornerRadius=UDim.new(0,5)}}::TextButton local y=x:FindFirstChild'Label'o.
Options[w]=x.__instance x:GetPropertyChangedSignal'GuiState':Connect(function()
if not u.Expanded then return end if x.GuiState==Enum.GuiState.Hover then x.
BackgroundTransparency=b.Theme.Controls.SelectionFocused[2].Value y.TextColor3=b
.Theme.Controls.SelectionFocusedAccent[1].Value y.TextTransparency=b.Theme.
Controls.SelectionFocusedAccent[2].Value else x.BackgroundTransparency=1 y.
TextColor3=b.Theme.Text.Primary[1].Value y.TextTransparency=b.Theme.Text.Primary
[2].Value end end)x.MouseButton1Click:Connect(function()if u then u.Expanded=
false u.Value=w end end)end c=c or{}c.Expanded=c.Expanded or false o.Body=e.
Apply(c,g'TextButton'{Name='PullDownButton',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Selectable=false,Text='',
Parent=m,g'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,3),PaddingLeft=
UDim.new(0,7),PaddingRight=UDim.new(0,3),PaddingTop=UDim.new(0,3)},g
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=
Enum.VerticalAlignment.Center},g'Frame'{Name='PullDownIndicator',BorderColor3=
Color3.fromRGB(0,0,0),BorderSizePixel=0,LayoutOrder=1,Selectable=true,Size=UDim2
.fromOffset(16,16),__dynamicKeys={BackgroundColor3=n.IndicatorBackground[1],
BackgroundTransparency=n.IndicatorBackground[2]},g'UICorner'{Name='UICorner',
CornerRadius=UDim.new(0,4)},g'ImageLabel'{Name='Indicators',BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://86693411280110',Size=UDim2.
fromScale(1,1),__dynamicKeys={ImageColor3=b.Theme.Text.Primary[1],
ImageTransparency=b.Theme.Text.Primary[2]}}},g'TextLabel'{Name='Label',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxassetid://12187365364',RichText=true,TextSize=15,
TextTransparency=0.15,TextTruncate=Enum.TextTruncate.AtEnd,Visible=false,
__dynamicKeys={TextColor3=b.Theme.Text.Primary[1],TextTransparency=b.Theme.Text.
Primary[2]}}})::TextButton o.PullDownIndicator=o.Body:FindFirstChild
'PullDownIndicator'::Frame o.CurrentTab=o.Body:FindFirstChild'Label'::TextLabel
o.MenuContainer=g'ScreenGui'{Name='Container',IgnoreGuiInset=true,ScreenInsets=
Enum.ScreenInsets.None,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=
201,OnTopOfCoreBlur=true,g'CanvasGroup'{Name='MenuBody',BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,BackgroundTransparency=1,Size=UDim2.fromScale(1
,1),g'ScrollingFrame'{Name='PullDownMenu',AutomaticSize=Enum.AutomaticSize.XY,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,AutomaticCanvasSize=Enum.
AutomaticSize.Y,CanvasSize=UDim2.new(),ScrollBarImageColor3=Color3.fromRGB(0,0,0
),ScrollBarImageTransparency=0.5,ScrollBarThickness=3,__dynamicKeys={
BackgroundColor3=n.MenuBackground[1],BackgroundTransparency=n.MenuBackground[2]}
,g'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,6)},g'UIStroke'{Name=
'UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Transparency=0.9},g
'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,5),PaddingLeft=UDim.new(0,
5),PaddingRight=UDim.new(0,5),PaddingTop=UDim.new(0,5)},g'UIListLayout'{Name=
'UIListLayout',SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,1)}}}}::
ScreenGui o.MenuBody=o.MenuContainer:FindFirstChild'MenuBody'::CanvasGroup o.
Menu=o.MenuBody:FindFirstChild'PullDownMenu'::ScrollingFrame local u local v={
Options=function(v:{[number]:string})for w,x in ipairs(o.Options)do x:Destroy()
end for w,x in ipairs(v)do t(u,x,w)end end,Expanded=function(v:boolean)local w=v
==true if w then o.MenuContainer.Parent=o.Body.__instance end s()local x,y={
GroupTransparency=w and 0 or 1},TweenInfo.new(w and 0 or 0.4,Enum.EasingStyle.
Exponential)local z=i:Create(o.MenuBody,y,x)z:Play()z.Completed:Connect(function
()if u.Expanded==false then o.MenuContainer.Parent=nil end end)end,Label=
function(v:string)if type(v)=='string'then o.CurrentTab.Visible=true o.
CurrentTab.Text=v end end,Value=function(v:number)if c.ValueChanged then c.Value
=v task.spawn(c.ValueChanged,u,v)end end}u=e.Wrap(c,v,o.Body)u.Type=
'PullDownButton'u.Theme=b.Theme u.Structures=o u.Option=function(w,x:string?)
local y=#o.Options+1 t(u,x,y)table.insert(u.Options,x)return o.Options[y]end u.
Remove=function(w,x:number?)if x and o.Options[x]then o.Options[x]:Destroy()u.
Options[x]=nil end end e.Apply(c,u)o.Body:GetPropertyChangedSignal
'AbsolutePosition':Connect(s)o.Body:GetPropertyChangedSignal'AbsoluteSize':
Connect(s)o.Menu:GetPropertyChangedSignal'AbsoluteSize':Connect(s)h.InputBegan:
Connect(function(w)if u.Expanded and(w.UserInputType==Enum.UserInputType.
MouseButton1 or w.UserInputType==Enum.UserInputType.Touch)then local x,y,z=h:
GetMouseLocation(),k:GetGuiInset(),o.Menu local A,B,C=z.AbsolutePosition,z.
AbsoluteSize,x.Y-y.Y if x.X<A.X or x.X>A.X+B.X or C<A.Y or C>A.Y+B.Y then u.
Expanded=false end end end)o.Body.MouseButton1Click:Connect(function()u.Expanded
=not u.Expanded end)return u end end function a.F():typeof(b())local c=a.cache.F
if not c then c={c=b()}a.cache.F=c end return c.c end end do local b=function()a
.b()return function(b,c:NotificationProperties__DARKLUA_TYPE_1):
Notification__DARKLUA_TYPE_2 local d,e,f=a.d(),a.e(),a.a()local g,h,i=e.Create,d
.TweenService,d.RunService c=c or{}c.Title=c.Title or'Notification'c.Body=c.Body
or''c.Footer=c.Footer or''c.Icon=c.Icon or nil c.Duration=c.Duration or 4 c.
Position=c.Position or'TopLeft'local j=b.__container or b.__instance or b local
k=j:FindFirstChild'NotificationContainer'if not k then k=g'Folder'{Name=
'NotificationContainer',Parent=j}end local l=g'Frame'{Name='Notification',
BackgroundColor3=b.Theme.Controls.Background[1].Value,BackgroundTransparency=0.1
,BorderSizePixel=0,Size=UDim2.fromOffset(320,0),Position=UDim2.new(0,16,0,16),
ClipsDescendants=true,__dynamicKeys={BackgroundColor3=b.Theme.Controls.
Background[1]},g'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,10)},g
'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,
12),PaddingTop=UDim.new(0,12),PaddingBottom=UDim.new(0,12)},g'Frame'{Name=
'LayoutContainer',BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize
=Enum.AutomaticSize.Y,g'UIListLayout'{Name='UIListLayout',FillDirection=Enum.
FillDirection.Vertical,Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.
LayoutOrder},g'Frame'{Name='Header',BackgroundTransparency=1,Size=UDim2.new(1,0,
0,0),AutomaticSize=Enum.AutomaticSize.Y,g'UIListLayout'{Name='UIListLayout',
FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=Enum
.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},g
'ImageLabel'{Name='Icon',BackgroundTransparency=1,Size=UDim2.fromOffset(24,24),
Image=c.Icon or'',Visible=c.Icon~=nil and c.Icon~='',__dynamicKeys={ImageColor3=
b.Theme.Icons.Primary[1]}},g'TextLabel'{Name='Title',BackgroundTransparency=1,
Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,Text=c.Title,
TextColor3=b.Theme.Controls.PrimaryText[1].Value,TextTransparency=b.Theme.
Controls.PrimaryText[2].Value,FontFace=Font.fromEnum(Enum.Font.GothamSemibold),
TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,
__dynamicKeys={TextColor3=b.Theme.Controls.PrimaryText[1],TextTransparency=b.
Theme.Controls.PrimaryText[2]}}},g'TextLabel'{Name='Body',BackgroundTransparency
=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,Text=c.Body,
TextColor3=b.Theme.Controls.SecondaryText[1].Value,TextTransparency=b.Theme.
Controls.SecondaryText[2].Value,FontFace=Font.fromEnum(Enum.Font.Gotham),
TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,Visible=c.
Body and c.Body~='',__dynamicKeys={TextColor3=b.Theme.Controls.SecondaryText[1],
TextTransparency=b.Theme.Controls.SecondaryText[2]}},g'TextLabel'{Name='Footer',
BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,Text=c.Footer,TextColor3=b.Theme.Controls.SecondaryText[1].Value
,TextTransparency=b.Theme.Controls.SecondaryText[2].Value+0.2,FontFace=Font.
fromEnum(Enum.Font.Gotham),TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,
TextWrapped=true,Visible=c.Footer and c.Footer~='',__dynamicKeys={TextColor3=b.
Theme.Controls.SecondaryText[1],TextTransparency=function()return b.Theme.
Controls.SecondaryText[2].Value+0.2 end}}}}:__create()local m,n,o=function()
local m=j:FindFirstAncestorWhichIsA'ScreenGui'if not m then return end local n,o
,p,q=m.AbsoluteSize,l.AbsoluteSize,16,16 if c.Position=='TopRight'then l.
Position=UDim2.new(1,-p-o.X,0,q)elseif c.Position=='BottomLeft'then l.Position=
UDim2.new(0,p,1,-q-o.Y)elseif c.Position=='BottomRight'then l.Position=UDim2.
new(1,-p-o.X,1,-q-o.Y)else l.Position=UDim2.new(0,p,0,q)end end,true local p,q=
function()if c.Duration<=0 then return end task.delay(c.Duration,function()if n
and l and l.Parent then Dismiss(true)end end)end,function(p:boolean?)if not n
then return end n=false if o then o:Cancel()end if p then local q=TweenInfo.new(
0.3,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out)o=h:Create(l,q,{
AnchorPoint=Vector2.new(0.5,0),Position=l.Position-UDim2.new(0,0,0,l.
AbsoluteSize.Y+10),GroupTransparency=1})o:Play()o.Completed:Once(function()if l
and l.Parent then l:Destroy()end end)else if l and l.Parent then l:Destroy()end
end end local r,s=function()if not n then return end l.Size=UDim2.fromOffset(320
,0)l.GroupTransparency=1 local r=TweenInfo.new(0.3,Enum.EasingStyle.Exponential,
Enum.EasingDirection.Out)local s=h:Create(l,r,{GroupTransparency=0})s:Play()task
.delay(0.05,function()m()end)p()end,{Title=function(r:string)local s=l:
FindFirstChild'LayoutContainer':FindFirstChild'Header':FindFirstChild'Title'if s
then s.Text=r end end,Body=function(r:string)local s=l:FindFirstChild
'LayoutContainer':FindFirstChild'Body'if s then s.Text=r s.Visible=r and r~=''
end end,Footer=function(r:string)local s=l:FindFirstChild'LayoutContainer':
FindFirstChild'Footer'if s then s.Text=r s.Visible=r and r~=''end end,Position=
function(r:string)c.Position=r m()end,Duration=function(r:number)c.Duration=r p(
)end}local t=f.Wrap(c,s,l)t.Type='Notification't.Theme=b.Theme t.Dismiss=q t.
Show=r task.defer(function()f.Apply(c,t)r()end)return t end end function a.G():
typeof(b())local c=a.cache.G if not c then c={c=b()}a.cache.G=c end return c.c
end end end local b,c=a.a(),{Window=a.k(),Section=a.l(),Tab=a.m(),PageSection=a.
o(),Form=a.p(),Row=a.q(),HStack=a.r(),VStack=a.s(),TitleStack=a.t(),Label=a.u(),
Symbol=a.v(),Toggle=a.w(),TextField=a.x(),KeybindField=a.y(),Slider=a.z(),Button
=a.B(),Stepper=a.C(),RadioButtonGroup=a.D(),PopUpButton=a.E(),PullDownButton=a.
F(),Notification=a.G()}for d,e in pairs(c)do c[d]=(function(f)return function(
...)local g=f(...)b.Apply(c,g)return g end end)(e)end return c