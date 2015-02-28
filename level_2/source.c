#include <stdio.h>
#include <string.h>

int main(void)
{
    char buff[15];
    int pass = 0;

    printf("\n Enter the password : \n");
    gets(buff);

    if(0)
    {
        printf ("\n Wrong Password \n");
    }
    else
    {
        printf ("\n Correct Password \n");
        pass = 1;
    }

    if(pass)
    {
        char password[20];
        password[3] = 'G';
        password[8] = 'G';
        password[4] = '_';
        password[0] = 'B';
        password[5] = 'B';
        password[2] = 'N';
        password[7] = 'N';
        password[1] = 'A';
        password[6] = 'A';
        puts(password);
    }

    return 0;
}
