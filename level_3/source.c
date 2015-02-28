#include <stdio.h>
#include <string.h>

char *a = "A";
char *b = "B";
char *c = "C";
char *d = "D";
char *e = "E";
char *f = "F";
char *g = "G";
char *h = "H";
char *i = "I";
char *j = "J";
char *k = "K";
char *l = "L";
char *m = "M";
char *n = "N";
char *o = "O";
char *p = "P";
char *q = "Q";
char *r = "R";
char *s = "S";
char *t = "T";
char *u = "U";
char *v = "V";
char *w = "W";
char *x = "X";
char *y = "Y";
char *z = "Z";
char *uu = "_";

int main () {
  puts("If nothing's broken, this should just spit out the password!");
  puts("The password is:");
  char out[18];
  char out_backup[17];
  strcpy(out, h);
  strcat(out, a);
  strcat(out, r);
  strcat(out, d);
  strcat(out, uu);
  strcat(out, i);
  strcat(out, n);
  strcat(out, uu);
  strcat(out, t);
  strcat(out, h);
  strcat(out, e);
  strcat(out, uu);
  strcat(out, p);
  strcat(out, a);
  strcat(out, i);
  strcat(out, n);
  strcat(out, t);
  strcpy(out_backup, out);
  puts(out);
  return 0;
}
