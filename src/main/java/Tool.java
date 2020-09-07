import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-06-23
 * @Time: 9:37
 */
public class Tool
{
    private static Pattern linePattern = Pattern.compile("_(\\w)");

    /**
     * 下划线转驼峰
     */
    public static String lineToHump(String str)
    {
        str = str.toLowerCase();
        Matcher matcher = linePattern.matcher(str);
        StringBuffer sb = new StringBuffer();
        while (matcher.find())
        {
            matcher.appendReplacement(sb, matcher.group(1).toUpperCase());
        }
        matcher.appendTail(sb);
        return sb.toString();
    }

    /**
     * 驼峰转下划线(简单写法，效率低于{@link #humpToLine2(String)})
     */
    public static String humpToLine(String str)
    {
        return str.replaceAll("[A-Z]", "_$0").toLowerCase();
    }

    private static Pattern humpPattern = Pattern.compile("[A-Z]");

    /**
     * 驼峰转下划线,效率比上面高
     */
    public static String humpToLine2(String str)
    {
        Matcher matcher = humpPattern.matcher(str);
        StringBuffer sb = new StringBuffer();
        while (matcher.find())
        {
            matcher.appendReplacement(sb, "_" + matcher.group(0).toLowerCase());
        }
        matcher.appendTail(sb);
        return sb.toString();
    }

    /**
     *
     * @param srcStr 被查找字符串
     * @param findStr 查找字符串
     * @return 查找字符串在被查找字符串出现的次数
     */
    public static int count2(String srcStr, String findStr)
    {
        int count = 0;
        // 通过静态方法compile(String regex)方法来创建,将给定的正则表达式编译并赋予给Pattern类
        Pattern pattern = Pattern.compile(findStr);
        Matcher matcher = pattern.matcher(srcStr);
        while (matcher.find())
        {
            count++;
        }
        return count;
    }

    /**
     *
     * @param srcStr 被查找字符串
     * @param findStr 查找字符串
     * @return 查找字符串在被查找字符串出现的次数
     */
    public static int count(String srcStr, String findStr)
    {
        int count = 0;
        int index = 0;
        while ((index = srcStr.indexOf(findStr, index)) != -1)
        {
            index = index + findStr.length();
            count++;
        }
        return count;
    }


    public static void main(String[] args)
    {
        /*String lineToHump = lineToHump("f_parent_no_leader");
        System.out.println(lineToHump);// fParentNoLeader
        System.out.println(humpToLine(lineToHump));// f_parent_no_leader
        System.out.println(humpToLine2(lineToHump));// f_parent_no_leader*/
        int i = count("<value code=\"${cnInpatientMedicalRecord.mrQualityCode!'NA'}\" codeSystem=\"2.16.156.10011.2.3.2.29\" codeSystemName=\"病案质量等级表\" displayName=\"<@dict_tag value=\"${cnInpatientMedicalRecord.mrQualityCode!'NA'}\" datasetCloumn=\"MR_QUALITY_CODE\">${dict.desc}</@dict_tag>\" xsi:type=\"CD\"/>\n" +
                "                 ","${cnInpatientMedicalRecord");
        System.out.println(i);
    }
}