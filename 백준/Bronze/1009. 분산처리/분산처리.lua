function get_computer_number(a, b)
    local last_digit_cycles = {
        [0] = {10}, 
        [1] = {1},
        [2] = {2, 4, 8, 6},
        [3] = {3, 9, 7, 1},
        [4] = {4, 6},
        [5] = {5},
        [6] = {6},
        [7] = {7, 9, 3, 1},
        [8] = {8, 4, 2, 6},
        [9] = {9, 1}
    }

    local last_digit = a % 10
    if last_digit == 0 then
        last_digit = 0
    end
    local cycle = last_digit_cycles[last_digit]
    local cycle_length = #cycle
    local cycle_index = (b - 1) % cycle_length + 1

    return cycle[cycle_index]
end

local T = io.read("*number")
for i = 1, T do
    local a, b = io.read("*number", "*number")
    print(get_computer_number(a, b))
end