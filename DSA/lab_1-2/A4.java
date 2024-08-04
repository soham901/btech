import java.util.Scanner;

public class A4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt(), fact = 1;

        if (n < 0) {
            System.out.println("Invalid Input");
            return;
        }
        
        for(int a=1; a <= n; a++) {
            fact *= a;
        }

        System.out.println(fact);
    }
}