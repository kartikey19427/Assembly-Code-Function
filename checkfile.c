#include <stdio.h>
#include<stdlib.h>
#include <inttypes.h>

char *checkGreater(int64_t, int64_t);

int main()
{
	int a;
	int b;
	scanf("%d\n%d",&a,&b);
	checkGreater(a,b);
	return 0;
}
