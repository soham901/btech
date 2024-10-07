import java.util.HashMap;
import java.util.Map;



public class p41 {
    static int isValidParenthesis(String str) {
        int n = str.length();

        if(n % 2 != 0) return 0;

        int mid = n / 2;


        // char[] map = new char[str.length()];
        
        // for (int i = 0; i < str.length(); i++) {
        //     for (int j = 0; j < map.length; j++) {
        //         if(map[j] != str.charAt(i)) {
        //             map[map.length] = str.charAt(i);
        //         }
        //     }
        // }

        Map<Character, Integer> map = new HashMap<>();

        for (int i = 0; i < n; i++) {
            switch (str.charAt(i)) {
                case ')':
                    map.put('(', 0);
                    break;
            }
        }

        for (Object elem : map.entrySet().toArray()) {
            System.out.println(elem);
        }

        // int firstVal = (int) map.values().toArray()[0];

        // for (int elem : map.values()) {
        //     if(firstVal != elem) {
        //         return 0;
        //     }
        // }

        return 1;
    }


    public static void main(String[] args) {
        test();
        
        // Scanner sc = new Scanner(System.in);
        // String input = "abcba";//sc.next();

        // System.out.println(input + " is" + (isValidParenthesis(input) ? "" : " not") + " Valid String");

        // sc.close();
    }

    static void test() {
        // test 1
        assert isValidParenthesis("()") == 1 : "Failed t1";

        // // test 2
        // assert isValidParenthesis("([)]") == 0 : "Failed t2";

        // // test 3
        // assert isValidParenthesis("([{}()])[{}]") == 1 : "Failed t3";

        // // test 4
        // assert isValidParenthesis("[{{}]") == 0 : "Failed t4";

        System.out.println("All test cases passed");
    }
}
