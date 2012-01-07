hooksecurefunc('CreateFrame', function(type, name, parent, template)
	if template == 'SecureUnitButtonTemplate' then
		_G[name]:SetAttribute('shift-type1', 'focus')
	end
end)

local f = CreateFrame('CheckButton', 'focusButton', UIParent, 'SecureActionButtonTemplate')
f:SetAttribute('type1', 'macro')
f:SetAttribute('macrotext', '/focus mouseover')
SetOverrideBindingClick(f, true, 'shift-BUTTON1', 'focusButton')
