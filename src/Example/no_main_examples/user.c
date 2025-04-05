#include "checknumber.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

LEAN_EXPORT int main(int argc, char *argv[]);
LEAN_EXPORT int main(int argc, char *argv[]) {
  if (argc != 2) {
    printf("Usage: %s <number>\n", argv[0]);
    return 1;
  }
  int number = atoi(argv[1]);
  printf("The number entered was: %d\n", number);
  bool result = l_checkNumber(number);
  printf("Checking whether the number you entered is equal to 42: %s\n",
         result ? "true" : "false");
  return 0;
}
