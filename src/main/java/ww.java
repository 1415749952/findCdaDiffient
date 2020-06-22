import com.sun.tools.javac.Main;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-06-22
 * @Time: 10:29
 */
public class ww
{
    public static void main(String[] args)
    {
        String filetext = "//@张小名: 25分//@李小花: 43分//@王力: 100分";
        Pattern p = Pattern.compile("\\@(.*?)\\:");//正则表达式，取=和|之间的字符串，不包括=和|
        Matcher m = p.matcher(filetext);
        while(m.find()) {
            System.out.println(m.group(0));//m.group(1)不包括这两个字符

        }
    }
}
