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
local a={cache={}::any}do do local b=function()return 1 end function a.a():
typeof(b())local c=a.cache.a if not c then c={c=b()}a.cache.a=c end return c.c
end end do local b=function()local b={}function b.Apply(c:{[string]:any},d:any,e
:{[number]:string}?):any for f,g in pairs(c)do if e and table.find(e,f)then
continue end pcall(function()d[f]=g end)end return d end function b.
ReactiveTable(c,d)local e,f=table.clone(c or{}),{}local g={__index=function(g,h)
return e[h]end,__newindex=function(g,h,i)e[h]=i if d then d(e)end end,__len=
function()return#e end,__pairs=function()return pairs(e)end,__ipairs=function()
return ipairs(e)end,__metatable=false}return setmetatable(f,g)end function b.
Wrap(c:{[string]:any},d:{[string]:(any)->()},e:Instance?,f:{[number]:any}?):any
local g={}setmetatable(g,{__index=function(h,i)if c[i]~=nil then return c[i]
elseif e then local j,k=pcall(function()return e[i]end)if j then return k end
end return end,__newindex=function(h,i,j)local k=d[i]if k then k(j)if not(f and
table.find(f,i))then c[i]=j end elseif e then local l=pcall(function()e[i]=j end
)if not l then c[i]=j end else c[i]=j end end})return g end return b end
function a.b():typeof(b())local c=a.cache.b if not c then c={c=b()}a.cache.b=c
end return c.c end end do local b=function()local b,c,d=a.a(),a.b(),{}function d
.Value(e:any):ValueState__DARKLUA_TYPE_l local f={}return c.Wrap({Value=e,
Connect=function(g,h)table.insert(f,h)return h end},{Value=function(g)for h,i in
pairs(f)do pcall(i,g)end end})end function d.Create(e:string)return function(f)f
=f or{}local g=Instance.new(e)for h,i in pairs(f)do if h=='__dynamicKeys'and
type(i)=='table'then for j,k:ValueState__DARKLUA_TYPE_l in pairs(i)do pcall(
function()g[j]=k.Value end)k:Connect(function(l)task.defer(pcall,function()if f.
__contextKeys and f.__contextKeys._general then f.__contextKeys._general()end g[
j]=f.__contextKeys and f.__contextKeys[j]and f.__contextKeys[j]()or l end)end)
end continue end if typeof(i)=='table'and i.__unique then i.Parent=g end pcall(
function()g[h]=i end)end return setmetatable({__unique=true},{__metatable=g,
__index=function(h,i)if i=='__instance'then return g end local j=g[i]if typeof(j
)=='function'then return function(k,...)return j(g,...)end else return j end end
,__newindex=function(h,i,j)g[i]=j end})end end return d end function a.c():
typeof(b())local c=a.cache.c if not c then c={c=b()}a.cache.c=c end return c.c
end end do local b=function()local b={}b.Clone=function(c:any)local d:any if
type(c)=='function'then d=clonefunction and clonefunction(c)elseif typeof(c)==
'Instance'then d=cloneref and cloneref(c)end return d or c end b.ProtectUI=
function(c:Instance):ScreenGui|string local d,e=pcall(function()return gethui()
end)local f,g=pcall(function()local f=b.Clone(game:GetService'CoreGui')if f and
f.ClassName then return f end return end)local h,i=pcall(function()c.Parent=d
and e or f and g or b.Clone(game:GetService'Players').LocalPlayer.PlayerGui end)
return h and c or i end return b end function a.d():typeof(b())local c=a.cache.d
if not c then c={c=b()}a.cache.d=c end return c.c end end do local b=function()
local b=a.d()local c=function(c:string)return b.Clone(game:GetService(c))end
return{HttpService=c'HttpService'::HttpService,TweenService=c'TweenService'::
TweenService,RunService=c'RunService'::RunService,UserInputService=c
'UserInputService'::UserInputService,GuiService=c'GuiService'::GuiService,
Workspace=c'Workspace'::Workspace,Players=c'Players'::Players,Lighting=c
'Lighting'::Lighting}end function a.e():typeof(b())local c=a.cache.e if not c
then c={c=b()}a.cache.e=c end return c.c end end end a.a()return function(b,c:
PopUpButtonProperties__DARKLUA_TYPE_Y):PopUpButton__DARKLUA_TYPE_Z local d,e,f=a
.c(),a.b(),a.e()local g,h,i,j,k=d.Create,f.UserInputService,f.TweenService,f.
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
=not w.Expanded end)return w end