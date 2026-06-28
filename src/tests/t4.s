# https://mathworld.wolfram.com/HofstadtersQ-Sequence.html

# given:
#
# #include <stdint.h>
# #include <stdio.h>
#
# uint64_t f(uint64_t n) {
#   if (n < 1)
#      return 1; 
#    else
#       return f(n - f(n - 1)) - f(n - f (n - 2));
# }


# Stack frame information for function 'f':
# - register a0 contains n (size: 8 bytes)
# - saved reg ra at stack offset: 16
# - saved reg s1 at stack offset: 8
# - saved reg s0 at stack offset: 0

  .text
  .global f
f:
  addi sp,sp,-24
  sd ra,16(sp)
  sd s1,8(sp)
  sd s0,0(sp)

  beqz a0,Then
  addi a1,a0,-1
  mv s1,a0
  mv a0,a1
  call f
  sub a0,s1,a0
  call f
  mv s0,a0
  addi a0,s1,-2
  call f
  sub a0,s1,a0
  call f
  sub a0,s0,a0
  j fEPI

Then:
  li a0,1
  j fEPI

fEPI:
  ld ra,16(sp)
  ld s1,8(sp)
  ld s0,0(sp)
  addi sp,sp,24
  ret
