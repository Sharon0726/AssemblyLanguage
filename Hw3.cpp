#include <stdio.h>
int main(){
      int m, n;
      extern "C" int is_coprime(int, int);
      scanf("%d", &m);
      scanf("%d", &n);
      printf("%d\n", is_coprime(m, n));
}