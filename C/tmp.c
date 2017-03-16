#include<stdio.h>
#include<stdlib.h>

void fun(){
   
   printf("ok fun\n");
}

void fun1(){
   printf("ok fun1\n");
}

int main(){

    int* b=NULL;
    free(b);
    free(b);
    int *a=(int*)malloc(10*sizeof(int));
    *(a+1)=5;
    printf("%d\n",*b);
    free(a);
    free(a);
    printf("%d\n",*(a+1));
}



