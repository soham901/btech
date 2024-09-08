/*
 * Write a program to insert a number at a given location in an array.
 */

import java.util.Scanner;

public class A1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n + 1];

        System.out.println();

        for (int a = 0; a < n; a++) {
            arr[a] = sc.nextInt();
        }

        System.out.println();

        int idx = sc.nextInt();
        int val = sc.nextInt();
        int t1 = arr[idx];
        int t2;

        arr[idx] = val;

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