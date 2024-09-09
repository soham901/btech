/*
 * Write a program to swap two numbers using user-defines method.
 */

import java.util.Scanner;

public class B33 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        swap(a, b);
        sc.close();
    }

    public static void swap(int a, int b) {
        int t = a;
        a = b;
        b = t;
        System.out.println(a + " " + b);
    }
}
