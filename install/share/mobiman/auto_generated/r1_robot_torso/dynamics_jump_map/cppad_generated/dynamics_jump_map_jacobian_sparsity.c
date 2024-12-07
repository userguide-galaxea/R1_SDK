void dynamics_jump_map_jacobian_sparsity(unsigned long const** row,
                                         unsigned long const** col,
                                         unsigned long* nnz) {
   static unsigned long const rows[4] = {0,1,2,3};
   static unsigned long const cols[4] = {1,2,3,4};
   *row = rows;
   *col = cols;
   *nnz = 4;
}
