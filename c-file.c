#include <stdio.h>
#include <conio.h>  // For getch() to pause the console

#ifdef __cplusplus
extern "C" {
#endif

    // Declare the external assembly function with stdcall convention
    void __stdcall asmfunc(int* arr, int* n);

#ifdef __cplusplus
}
#endif

int main() {
    system("cls");  
    int arr[7] = {1,3,4,5,6,7,9};  
    int n=0;  

    
    printf("The array is:");
    for(int i=0;i<7;i++){
        printf("%d",arr[i]);
        printf(" ");
    }
    printf("\n");
    getch();  
    asmfunc(arr, &n); 
    if(n==0){
        printf("there is no even number");
        return 0;
    }
    else{
    printf("The first even is: %d\n", n);
    }
    return 0;
}