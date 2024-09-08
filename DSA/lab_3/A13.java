/*
 *  Write a program to read and display n numbers using an array.
 */

import java.util.Scanner;

public class A13 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];

        for (int a = 0; a < n; a++)
            arr[a] = sc.nextInt();

        System.out.println();

        for (int a : arr)
            System.out.print(a + " ");

        sc.close();
    }
}