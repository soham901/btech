/*
 * Write a program to calculate sum of numbers from m to n
 */

import java.util.Scanner;

public class A14 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int m = sc.nextInt(), n = sc.nextInt(), sum = 0;

        for (int a = m; a <= n; a++)
            sum += a;

        System.out.println(sum);

        sc.close();
    }
}