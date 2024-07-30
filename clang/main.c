#include "stdio.h"

int main() {
    FILE* f;

    f = fopen("myfile.txt", "a");

    for(int i=0;i<100000000;++i) {
        fprintf(f, "hi");
    }

    fclose(f);

    int num;
    scanf("%d", &num);
    printf("You entered number: %d\n", num);

    return 0;
}