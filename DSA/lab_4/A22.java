/*
 * Write a program to delete a number from a given location in an array
 */

import java.util.Scanner;

public class A22 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];

        System.out.println();

        for (int a = 0; a < n; a++) {
            arr[a] = sc.nextInt();
        }

        System.out.println();

        int idx = sc.nextInt();
        int t1 = arr[idx];
        int t2;

        for (int a = idx + 1; a < arr.length; a++) {
            t2 = arr[a];
            arr[a] = t1;
            t1 = t2;
        }

        System.out.println();

        for (int a : arr) {
            System.out.println(a);
        }

        sc.close();
    }
}