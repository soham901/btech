/*
 * WAP to sort the N names in an alphabetical order.
 */

import java.util.*;

public class C20 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        String[] arr = new String[n];

        for (int a = 0; a < n; a++) {
            arr[a] = sc.next();
        }

        sc.close();

        Arrays.sort(arr);
        for (String a : arr) {
            System.out.println(a);
        }
    }
}
