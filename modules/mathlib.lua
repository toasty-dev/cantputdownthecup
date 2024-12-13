-- provided by paws

local MathLibrary = {}
MathLibrary.__index = MathLibrary
 
MathLibrary.New = function()
    return setmetatable({}, MathLibrary)
end
 
MathLibrary.RandomFloat = function(MinValue, MaxValue)
    local RandomRange = MaxValue - MinValue
    local RandomOffset = math.random() * RandomRange
 
    return MinValue + RandomOffset
end
 
MathLibrary.Pi = function()
    return math.pi
end
 
MathLibrary.Distance = function(StartPoint, EndPoint)
    local DistanceVector = StartPoint - EndPoint
    local DistanceLength = DistanceVector.Magnitude
 
    return DistanceLength
end
 
MathLibrary.RandomUnlimited = function()
    local RandomUnlimited = math.random() * 10e10
 
    return RandomUnlimited
end
 
MathLibrary.PickRandom = function(Table)
    local NumberOfStrings = #Table
 
    local RandomIndex = math.random(1, NumberOfStrings)
 
    return Table[RandomIndex]
end
 
MathLibrary.DegreesToRadians = function(Degrees)
    return Degrees * (math.pi / 180)
end
 
MathLibrary.RadiansToDegrees = function(Radians)
    return Radians * (180 / math.pi)
end
 
MathLibrary.DotProduct = function(VectorOne, VectorTwo)
    return VectorOne:Dot(VectorTwo)
end
 
MathLibrary.CrossProduct = function(VectorOne, VectorTwo)
    return VectorOne:Cross(VectorTwo)
end
 
MathLibrary.AngleBetween = function(VectorOne, VectorTwo)
    local DotProduct = VectorOne:Dot(VectorTwo)
    local VectorOneMagnitude = VectorOne.Magnitude
    local VectorTwoMagnitude = VectorTwo.Magnitude
 
    local Calculation = math.deg(math.acos(DotProduct / (VectorOneMagnitude * VectorTwoMagnitude)))
    return Calculation
end
 
MathLibrary.Destroy = function()
    MathLibrary = nil
end
 
return MathLibrary
