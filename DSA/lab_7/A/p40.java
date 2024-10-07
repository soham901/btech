
import java.util.HashMap;
import java.util.Map;



public class p40 {
    static boolean isValidString(String str) {
        // char[] uniqueSet = new char[str.length()];
        
        // for (int i = 0; i < str.length(); i++) {
        //     for (int j = 0; j < uniqueSet.length; j++) {
        //         if(uniqueSet[j] != str.charAt(i)) {
        //             uniqueSet[uniqueSet.length] = str.charAt(i);
        //         }
        //     }
        // }

        Map<Character, Integer> uniqueSet = new HashMap<>();

        for (int i = 0; i < str.length(); i++) {
            if(uniqueSet.containsKey(str.charAt(i))) {
                int oldCount = uniqueSet.get(str.charAt(i));
                uniqueSet.put(str.charAt(i), oldCount + 1);
            }
            else {
                uniqueSet.put(str.charAt(i), 1);
            }
        }

        int firstVal = (int) uniqueSet.values().toArray()[0];

        for (int elem : uniqueSet.values()) {
            if(firstVal != elem) {
                return false;
            }
        }

        return true;
    }


    public static void main(String[] args) {
        test();
        
        // Scanner sc = new Scanner(System.in);
        // String input = "abcba";//sc.next();

        // System.out.println(input + " is" + (isValidString(input) ? "" : " not") + " Valid String");

        // sc.close();
    }

    static void test() {
        // test 1
        assert isValidString("abab") : "Failed t1";

        // test 2
        assert isValidString("xyxy") : "Failed t2";

        // test 3
        assert isValidString("qqeqwewew") : "Failed t3";

        // test 4
        assert isValidString("aab") == false : "Failed t4";

        // test 5
        assert isValidString("bbbbbdsgwtdga") == false : "Failed t5";

        System.out.println("All test cases passed");
    }
}
