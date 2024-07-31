// 60 > f
// 50 - 59 s
// 40 - 49 t
// < 40 f
import java.util.*;

class P1 {
    public static void main(String[] args) {
        Map<String, Integer> marks = new HashMap<>();
        
        String MATHS = "Maths";
        String SCIENCE = "Science";
        String ENGLISH = "English";
        String PHYSICS = "Physics";
        String COMPUTER = "Computer";

        int total = 0, per = 0, max = 100;

        // testcase #1
        marks.put(MATHS, 21);
        marks.put(SCIENCE, 73);
        marks.put(ENGLISH, 94);
        marks.put(PHYSICS, 82);
        marks.put(COMPUTER, 74);

        total = marks.get(MATHS) + marks.get(SCIENCE) + marks.get(PHYSICS) + marks.get(ENGLISH) + marks.get(COMPUTER);
        
    }
}