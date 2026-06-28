# given:
#
# #include <stdint.h>
# #include <stdio.h>
#
# int f(register uint64_t a, register uint64_t b) {
#   if (b == 0) {
#     return a;
#   } else {
#     return f(b, a % b);
#   }
# }


# Stack frame information for function 'f':
# - register a0 contains a (size: 8 bytes)
# - register a1 contains b (size: 8 bytes)
# - saved reg ra at stack offset: 8
# - saved reg s0 at stack offset: 0

  .text
  .global f
f:
  addi sp,sp,-16
  sd ra,8(sp)
  sd s0,0(sp)

  beqz a1,fEPI
  mv s0,a1
  call __umoddi3
  mv a1,a0
  mv a0,s0
  call f

fEPI:
  ld ra,8(sp)
  ld s0,0(sp)
  addi sp,sp,16
  ret
