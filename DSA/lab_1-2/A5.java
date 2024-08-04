import java.util.Scanner;

public class A5 {

public static int fact(int n) {
    if (n < 0) {
        System.out.println("Invalid Input");
        return -1;
    }
    if(n == 1 || n==0) return 1;
    return n * fact(n-1);
}

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        
        System.out.println(fact(n));
    }
}