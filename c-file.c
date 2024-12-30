#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int arr ,int * p2);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int arr[10]={12,1,34,45,-56,-9,-4,-3,-34,-13};
    int num=0;
    printf("HE ORIGNAL ARRAY IS :");
getch();

    for(int i=0;i<10;i++){
        printf("%d",arr[i]);
        printf(" ");
    }
    asmfunc(arr,&num); //assembly proc calling
   
   getch();
    
    printf("\n");
    printf("the total number of posiive values is :  %d \n ", num); // printing in c
    
  
    
    return 0;
}