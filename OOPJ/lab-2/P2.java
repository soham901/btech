// WAP to create a basic calc by getting 2 nums and 1 string
import java.util.Scanner;

class P2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        
        while(true) {
            int a = sc.nextInt();
        String op = sc.next();
        int b = sc.nextInt(), ans = 0;
        
        switch (op) {
            case "$":
                return;
            case "+":
                ans = a + b;
                break;
            case "-":
                ans = a - b;
                break;
            case "*":
                ans = a * b;
                break;
            case "/":
                ans = a / b;
                break;
            case "%":
                ans = a % b;
                break;
            default:
                System.out.println("Invalid Input");
                return;
        }

        System.out.println(a + " " + op + " " + b + " = " + ans + "\n--------------------------------------\n");
        }
    }
}