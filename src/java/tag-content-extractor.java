import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Solution {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        int cases = Integer.parseInt(scan.nextLine());
        
        while (cases-- > 0) {
            String line = scan.nextLine();
            
            boolean matchFound = false;
            Pattern regex = Pattern.compile("<(.+)>([^<]+)</\\1>");
            Matcher match = regex.matcher(line);

            while (match.find()) {
                System.out.println(match.group(2));
                matchFound = true;
            }
            if ( ! matchFound) {
                System.out.println("None");
            }
        }
    }
}