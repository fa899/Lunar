local Ray = {}

local createRay = function(Position, FacingDirection, lookVectorAmount, raycastParams)
	local Params = RaycastParams.new()
	for _, param in pairs(raycastParams) do
		Params[_] = param
	end
	
	if FacingDirection:lower() == "up" then
		local Axis = Position + CFrame.new(Position.X, Position.Y, Position.Z).UpVector
		return workspace:Raycast(Position, Axis * lookVectorAmount, raycastParams), {
			["direction"] = FacingDirection;
			["lookVector"] = lookVectorAmount;
			["rayAt"] = Axis * lookVectorAmount;
			["rayFrom"] = Position;
		}
	elseif FacingDirection:lower() == "down" then
		local Axis = Position + CFrame.new(Position.X, Position.Y, Position.Z).UpVector
		return workspace:Raycast(Position, Axis * -lookVectorAmount, raycastParams), {
			["direction"] = FacingDirection;
			["lookVector"] = lookVectorAmount;
			["rayAt"] = Axis * lookVectorAmount;
			["rayFrom"] = Position;
		}
	elseif FacingDirection:lower() == "front" then
		local Axis = Position + CFrame.new(Position.X, Position.Y, Position.Z).LookVector
		return workspace:Raycast(Position, Axis * lookVectorAmount, raycastParams), {
			["direction"] = FacingDirection;
			["lookVector"] = lookVectorAmount;
			["rayAt"] = Axis * lookVectorAmount;
			["rayFrom"] = Position;
		}
	elseif FacingDirection:lower() == "back" then
		local Axis = Position + CFrame.new(Position.X, Position.Y, Position.Z).LookVector
		return workspace:Raycast(Position, Axis * -lookVectorAmount, raycastParams), {
			["direction"] = FacingDirection;
			["lookVector"] = lookVectorAmount;
			["rayAt"] = Axis * lookVectorAmount;
			["rayFrom"] = Position;
		}
	elseif FacingDirection:lower() == "right" then
		local Axis = Position + CFrame.new(Position.X, Position.Y, Position.Z).RightVector
		return workspace:Raycast(Position, Axis * lookVectorAmount, raycastParams), {
			["direction"] = FacingDirection;
			["lookVector"] = lookVectorAmount;
			["rayAt"] = Axis * lookVectorAmount;
			["rayFrom"] = Position;
		}
	elseif FacingDirection:lower() == "left" then
		local Axis = Position + CFrame.new(Position.X, Position.Y, Position.Z).RightVector
		return workspace:Raycast(Position, Axis * -lookVectorAmount, raycastParams), {
			["direction"] = FacingDirection;
			["lookVector"] = lookVectorAmount;
			["rayAt"] = Axis * lookVectorAmount;
			["rayFrom"] = Position;
		}
	end
	
	return Vector3.new(0, 0, 0), {
		["direction"] = nil;
		["lookVector"] = 0;
		["rayAt"] = Vector3.new(0, 0, 0);
		["rayFrom"] = Vector3.new(0, 0, 0);
	}
end

local findPartOnRay = function(ray, ignoredescendantsinstance, ignorewater)
	return workspace:FindPartOnRay(ray, ignoredescendantsinstance, false, ignorewater)
end

Ray.findPartOnRay = findPartOnRay
Ray.new = createRay

return Ray
