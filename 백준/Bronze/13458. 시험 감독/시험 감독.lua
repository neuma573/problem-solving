function calculateSupervisors(n, a, b, c)
    local totalSupervisors = 0

    for i = 1, n do
        totalSupervisors = totalSupervisors + 1
        local remainingStudents = a[i] - b

        if remainingStudents > 0 then
            totalSupervisors = totalSupervisors + math.ceil(remainingStudents / c)
        end
    end

    return totalSupervisors
end

local n = io.read("*number")
local a = {}
for i = 1, n do
    a[i] = io.read("*number")
end
local b, c = io.read("*number", "*number")

local result = calculateSupervisors(n, a, b, c)
print(result)