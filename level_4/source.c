#include <time.h>
#include <stdio.h>
#include <stdlib.h>

int main () {
  srand(time(NULL));
  int r = rand() % 100000;

  puts("Guess a number:");

  int n;
  scanf ("%d",&n);

  if(r == n) {
    puts("\x59\x4f\x55\x5f\x4d\x41\x44\x45\x5f\x49\x54");
  }

  return 0;
}
