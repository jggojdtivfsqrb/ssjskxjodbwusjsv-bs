local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- Xóa các lực bay phổ biến
for _,v in ipairs(char:GetDescendants()) do
    if v:IsA("BodyVelocity") or v:IsA("BodyGyro") or v:IsA("BodyPosition")
    or v:IsA("AlignPosition") or v:IsA("AlignOrientation") 
    or v:IsA("VectorForce") or v:IsA("LinearVelocity") then
        v:Destroy()
    end
end

-- Khôi phục nhân vật
local humanoid = char:FindFirstChildOfClass("Humanoid")
if humanoid then
    humanoid.PlatformStand = false
    humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
end
