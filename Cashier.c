#include<stdio.h> 
int main(){
  int number1, number2, total;
  float real, money, change;
    printf("Enter product1 >>>");
      scanf("%d", &number1);

    printf("Enter product2 >>>");
      scanf("%d", &number2);

    total = number1 +number2;
    printf("Total product is %d\n", total);

  if(total>=3000) {
    printf("Discount 30% %\n");
    real = total*0.7;
  }

  else if(total>=2000 && total<=2999){ 
    printf("Discount 20% % \n");
    real = total*0.8;
  }

  else if(total >=1000 && total <=1999){ 
    printf("Discount 10%% \n");
    real = total*0.9;
    }

  else{
    printf("No discount");
    real = total;
    }

  printf("Real pay is %.2f\n", real);
  printf("Enter money");
  scanf("%f", &money);

  if(money>=real){
    change = money-real;
    printf("Change is %.2f\n", change);
    }

  else{
    printf("Not enough\n");
    }

  return 0;
}
