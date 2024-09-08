/*
 * WAP to find the sum of 1 + (1+2) + (1+2+3) + (1+2+3+4)+ …+(1+2+3+4+….+n)
 */

import java.util.Scanner;

public class C11 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();

        if (n < 0) {
            System.out.println("Invalid Input");
            return;
        }

        int sum = 0;

        // time complexity O(n) cause of single loop
        for (int i = 1; i <= n; i++) {
            sum += i * (i + 1) / 2;
        }

        System.out.println(sum);

        sc.close();
    }
}
