#include<stdio.h>

int main(){
    int a[7];
    printf("%d\n",sizeof(a));
    printf("%d\n",sizeof(a[8]));
    printf("%d\n",sizeof(&a[0]));
    printf("%d\n",sizeof(&a));
}

