# https://writings.stephenwolfram.com/2024/09/nestedly-recursive-functions/

# given:
#
# #include <stdint.h>
# #include <stdio.h>
#
# uint64_t f(uint64_t n) {
#   if (n < 1) 
#      return 2; 
#    else
#       return 3*f(n - f(n - 1));
# }


# Stack frame information for function 'a':
# - register a0 contains n (size: 8 bytes)
# - saved reg ra at stack offset: 8
# - saved reg s0 at stack offset: 0

  .text
  .global f
f:
  addi sp,sp,-16
  sd ra,8(sp)
  sd s0,0(sp)

  beqz a0,Then
  addi a1,a0,-1
  mv s0,a0
  mv a0,a1
  call f
  sub a0,s0,a0
  call f
  slli a1,a0,1
  add a0,a1,a0
  j fEPI

Then:
  li a0,2
  j fEPI

fEPI:
  ld ra,8(sp)
  ld s0,0(sp)
  addi sp,sp,16
  ret
