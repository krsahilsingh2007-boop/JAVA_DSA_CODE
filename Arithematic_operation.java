import java.util.*;

public class Arithematic_operation {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        int sum = a+b;
        int diff = a-b;
        int mul = a*b;
        int div = a/b;
        System.out.println("The sum of " + a + " and " + b + " is: " + sum);
        System.out.println("The difference of " + a + " and " + b + " is: " + diff);
        System.out.println("The product of " + a + " and " + b + " is: " + mul);
        System.out.println("The division of " + a + " and " + b + " is: " + div);

    }
    
}
