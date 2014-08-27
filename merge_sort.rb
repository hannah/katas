# P rinceton pseudocode - http://www.princeton.edu/~achaney/tmve/wiki100k/docs/Merge_sort.html
# function merge_sort(m)
#     if length(m) ≤ 1
#         return m
#     var list left, right, result


#     var integer middle = length(m) / 2
#     for each x in m up to middle
#          add x to left
#     for each x in m after middle
#          add x to right
#     left = merge_sort(left)
#     right = merge_sort(right)
#     result = merge(left, right)
#     return result
