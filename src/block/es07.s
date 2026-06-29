.global _start
_start:
	
	la t0,v
	blez a1,else
	sd a2,0(t0)
	
else:
	sd a3,0(t0)

fineIf:

# solution:
#
# uint64_t v;
#
# int main(){
# 	/*...*/
#	if(a > 0){
# 		v = b;
# 	} else {
# 		v = c;
#	}
#	/*...*/
# }
