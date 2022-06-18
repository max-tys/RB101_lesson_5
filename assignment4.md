# 4. Working with Blocks

## Example 3

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
```

| Line | Action | Object | Side Effect | Return Value | Is Return Value Used? |
| ---- | ------ | ------ | ----------- | ------------ | --------------------- |
| Line 1| Method call (map) | Outer array | No side effect | New array [1, 3] | Return value is unused. |
| Lines 1 - 4 | Block execution | Sub-array | No side effect | Integer at index 0 of the sub-array | Yes, used by map for transformation |
| Line 2 | Method call (puts and first) | arr.first and arr respectively | Outputs 1 and 3. No other side effects. | nil, element at index 0 of sub-array arr | puts's return value is unused, but first's return value is used by puts |
| Line 3 | Method call (first) | arr | No side effect | 1 on the first iteration, 3 on the second iteration.| Yes, used to determine return value of block. |

## Example 4
```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```
| Line | Action | Object | Side Effect | Return Value | Is Return Value Used? |
| ---- | ------ | ------ | ----------- | ------------ | --------------------- |
| 1 | Assignment of my_arr | The return value of the each method call on a nested array | Creates a local variable | None | No |
| 1 | Method call (each) | Outer array | None | Outer array | Yes, the return value is used for the assignment of local variable my_arr |
| 1 - 7 | Block execution | Sub-array | None | Sub-array | No |
| 2 | Method call (each) | Sub-array | None | Sub-array | No |
| 2 - 6 | Block execution | Elements of sub-array | None | ?? | No |
| 3 - 5 | Conditional if | Sub-array element | Output the sub-array element if condition is met | Nil if condition is met, nil if condition isn't met | No |
| 4 | Method call (puts) | Sub-array element | Output the sub-array element | Nil | No |