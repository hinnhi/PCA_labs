# given:
#
# #include <stdint.h>
# #include <stdio.h>
#
# uint64_t f(uint64_t n, uint64_t k) {
#   if (!(k == 0 || k == n))
#      return f(n - 1, k - 1) + f(n - 1, k); 
#    else
#       return 1;
# }
#
# /* The statement "snez rd,rs" writes 1 to "rd" if "rs" is non-zero, otherwise it writes zero*/


# Stack frame information for function 'f':
# - register a0 contains n (size: 8 bytes)
# - register a1 contains k (size: 8 bytes)
# - saved reg ra at stack offset:24
# - saved reg s1 at stack offset: 16
# - saved reg s0 at stack offset: 8
# - saved reg s2 at stack offset: 0

  .text
  .global f
f:
  addi sp,sp,-36
  sd ra,24(sp)
  sd s1,16(sp)
  sd s0,8(sp)
  sd s2,0(sp)

  snez a5,a1
  sub a4,a1,a0
  snez a4,a4
  and a5,a5,a4
  bne a5,zero,.L8
  li a0,1
  j fEPI

.L8:
  mv s0,a1
  addi s1,a0,-1
  addi a1,a1,-1
  mv a0,s1
  call f
  mv s2,a0
  mv a1,s0
  mv a0,s1
  call f
  add a0,s2,a0
  j fEPI

fEPI:
  ld ra,24(sp)
  ld s1,16(sp)
  ld s0,8(sp)
  ld s2,0(sp)
  addi sp,sp,36
  ret
