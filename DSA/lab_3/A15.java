/*
 * Write a program to calculate average of first n numbers.
 */

import java.util.Scanner;

public class A15 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt(), sum = 0;

        for (int a = 1; a <= n; a++) {
            sum += a;
        }

        System.out.println(sum / n);

        sc.close();
    }
}