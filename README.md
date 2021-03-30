# seam_carving_rb
Seam Carving algorithm using dynamic programming in Ruby.

# Approach

A dynamic programming approach is used to preprocess a given matrix `ary`.

We iterate upward over the rows of `ary` and for each entry of a row set its value to the original value plus the minimum value of all "southern" neighbors.

We then only have to iterate downward through the resulting matrix and "mark" the indices with minimum value.
