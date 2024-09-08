/*
 * WAP to replace lowercase characters by uppercase & vice-versa in a user specified string
 */

import java.util.Scanner;

public class C27 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.nextLine();

        sc.close();

        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) >= 'a' && str.charAt(i) <= 'z') {
                str = str.substring(0, i) + convert(str, i, 1);
            } else if (str.charAt(i) >= 'A' && str.charAt(i) <= 'Z') {
                str = str.substring(0, i) + convert(str, i, 0);
            }
        }

        System.out.println(str);
    }

    public static String convert(String str, int i, int op) {
        if (op == 0)
            return (char) (str.charAt(i) + 32) + str.substring(i + 1);
        else
            return (char) (str.charAt(i) - 32) + str.substring(i + 1);
    }

}
