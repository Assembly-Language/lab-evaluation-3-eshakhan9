#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif
void __stdcall asmfunc(int arr[], int size, int* sum);
#ifdef __cplusplus
}
#endif

int main() {
    system("cls");
    int arr[50];
    int size;
    int sum = 0;

    printf("Enter the size of the array (max 50): ");
    scanf("%d", &size);

    printf("Enter %d elements (positive or negative values): \n", size);
    for (int i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Assembly procedure calling from C! \n");
    asmfunc(arr, size, &sum);
    printf("Back to C! \n");
    printf("Sum of negative numbers in the array: %d\n", sum);

    return 0;
}