#include <stdio.h>
#include <unistd.h>
#include <dmtcp.h>

int main(int argc, char** argv)
{
    int i=0;
    printf("enabled: %d\n", dmtcp_is_enabled());
    while (1)
    {
        printf("%d\n", i);
        if (i == 5) {
                dmtcp_checkpoint();
}
        i++;
        sleep(1);
    }
}

