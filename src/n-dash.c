#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv){
    if(argc != 2){
        fprintf(stderr, "Incorrect number of arguments\n");
        return 1;
    }

    printf("result: %d\n", atoi(argv[1]));
    return 0;
}