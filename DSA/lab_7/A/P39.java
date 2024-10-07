
public class P39 {
    static  interface Stack {
        void push(char val);
        char pop();
        int peep(int idx);
        void display();
    }
    
    
    static  class Arr implements Stack {
        static char[] arr = new char[10000];
        static int top = -1;
    
    
        @Override
        public void push(char val) {
            if(top == 10000) throw new Error("Stack is overflow");
            top += 1;
            arr[top] = val;
        }
    
    
        @Override
        public char pop() {
            if(top == -1) throw new Error("Stack is underflow");
            char val = arr[top];
            top -= 1;
            return val;
        }
    
    
        @Override
        public int peep(int idx) {
            if(top == -1) throw new Error("Stack is underflow");
            return arr[top - idx];
        }
    
    
        @Override
        public void display() {
            for (int i = 0; i < top + 1; i++) {
                System.out.print(arr[i] + " ");
            }
            System.out.println();
        }
    }


    static boolean isValidString(String input) {
        int n = input.length();

        if(n % 2 == 0) return false;
        
        Arr stack = new Arr();

        int mid = n / 2;

        for (int i = 0; i < mid; i++) {
            stack.push(input.charAt(i));
        }

        for (int i = mid + 1; i < n; i++) {
            if(stack.pop() != input.charAt(i)) return false;
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
        assert isValidString("aba") : "Failed t1";

        // test 2
        assert isValidString("abcba") : "Failed t2";

        // test 3
        assert isValidString("abcdcba") : "Failed t3";

        // test 4
        assert isValidString("axyxa") : "Failed t4";

        // test 5
        assert isValidString("whyhw") : "Failed t5";

        System.out.println("All test cases passed");
    }
}
