https://www.codechef.com/problems/DIET?tab=statement
#include <stdio.h>
 
int main(void) {

	int T,flag=0;
	scanf("%d",&T);
	for(int i=0;i<T;i++)
	{	int sum=0;
	    int N,K,a[N];
	    scanf("%d%d",&N,&K);
	    for(int j=0;j<N;j++)
	    {
	        scanf("%d",&a[j]);
	    }
	    
	    for (int j=0;j<N;j++)
	    {
	        sum+=(a[j]-K);
            
            if(sum<0)
            {
            	flag=0;
                printf("NO %d\n",j+1);
                break;
            }
    
            else 
            {
               flag=1;
	        }
	    }
	    
	    if(flag==1)
	    {
	        printf("YES\n");
	    }
	}
	
	return 0;
}
