#include <stdio.h>
extern "C" int is_prime(int);

int main(){
    for(int i=2; i<1000; ++i)
        if( is_prime(i))
            printf("%d ", i);
    printf("\n");
}