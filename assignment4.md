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

---

## Example 4

