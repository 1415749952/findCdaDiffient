package cda;

import org.apache.commons.io.FileUtils;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-07-06
 * @Time: 19:16
 */
public class RedCDA
{
    public static void main(String[] args) throws IOException
    {
        File directory = new File("");//参数为空
        //不同操作系统显示不同的。windows上面代表/。macos和Linux代表\
        String separator = File.separator;
        String courseFile = directory.getCanonicalPath() + separator + "src" + separator + "main" + separator + "resources" + separator + "cdaTemp";//标准的路径 ;
        //String courseFile ="G:\\cdaTemplate";
        File cadTempFile = new File(courseFile);
        //所有的cda文档名称
        String[] cdaFileNames = cadTempFile.list();
        HashSet<String> strings = new HashSet<>();
        List<String> strings1 = Arrays.asList(cdaFileNames);
        Collections.sort(strings1);
        for (String cdaFileName : strings1)
        {
            File cda = new File(courseFile + separator + cdaFileName);
            String s = redCDAFileByLine(cda);
            strings.add(s);
            /*String s = redCDAFile(cda);
            StringBuffer sql = new StringBuffer();
            sql.append("update esb_cda_template set content = '");
            sql.append(s);
            sql.append("' ");
            sql.append("where id = ");
            String substring = cdaFileName.substring(0, 2);
            Integer integer = Integer.valueOf(substring);
            sql.append(String.valueOf(integer));
            System.out.println(sql);*/
        }
        System.out.println(strings.size());
        for (String string : strings)
        {
            System.out.println(string);
        }
        //redCDAFile(new File(courseFile+"\\"+"01.病历概要.xml"));
    }

    public static String redCDAFile(File cdaFile) throws IOException
    {
        return FileUtils.readFileToString(cdaFile);
    }


    public static String redCDAFileByLine(File cdaFile) throws IOException
    {
        String ch = "";
        System.out.println("******************" + cdaFile.getName() + "*****************************");
        List<String> list = FileUtils.readLines(cdaFile);
        for (String s : list)
        {
           /* if (s.contains("code=\"${"))
            {
                if (!s.contains("displayName=\"<@dict_tag"))
                {
                    System.out.println(s);
                }
            }*/
            /*if (s.contains("<value") && s.contains("</value>"))
            {
                if (!s.contains("${"))
                {
                    System.out.println(s);
                }
            }*/
            //没有配置从字典取值的节点
            /*if (s.contains("code=\"${") && s.contains("!'NA'}"))
            {
                Pattern p = Pattern.compile("\\{(.*?)\\}");//正则表达式，取{和=}之间的字符串
                Matcher m = p.matcher(s);
                HashSet<String> strings = new HashSet<>();
                while (m.find())
                {
                    String group = m.group(0);
                    strings.add(group);
                }
                if (strings.size() != 2)
                {
                    System.out.println(s);
                }
            }*/
            //查看没有配字典的包含value字段的节点
           /* if (s.contains("value=\""))
            {
                if (!s.contains("${"))
                {
                    System.out.println(s);
                }
            }*/
            //查看extension，中配置了值的节点
           /* if (s.contains("extension=\""))
            {
                if (!s.contains("NA") && !s.contains("typeId") && !s.contains("${"))
                {
                    System.out.println(s);
                }
            }*/
            //查看没有配字典的 <name></name>节点
            /*if (s.contains("<name>"))
            {
                if (!s.contains("${"))
                {
                    System.out.println(s);
                }
                //System.out.println(s);
            }*/
            //查看没有配字典的 <value></value>节点
            /*if (s.contains("<value") && s.contains(" displayName=\""))
            {
                if (!s.contains("${"))
                {
                    System.out.println(s);
                }
            }*/
            //查看没有配字典的<code></code>节点
            /*if (s.contains("code") && s.contains(" displayName=\""))
            {
                if (!s.contains("${"))
                {
                    System.out.println(s);
                }
            }*/
            //查看cda模版是否有配置常量true和false情况
            /*if (s.contains("true") || s.contains("false"))
            {
                if (!s.contains("component") && !s.contains("entry"))
                {
                    System.out.println(s);
                }
            }*/
           /* if (s.contains("extension=\"NA\""))
            {
                System.out.println(s);
            }*/
            if (s.contains("${"))
            {
                if (s.contains("${"))
                {
                    if (s.contains("NA"))
                    {
                        System.out.println(s);
                    }
                }
                //ch = s;
                //break;
            }
        }
        return ch;
    }

    /**
     * 查找一个字符在字符串中出现的次数
     *
     * @param findStr 查找的字符
     * @param str 被查找的字符串
     */
    public static int find(String findStr, String str)
    {
        //存放每个字符的数组
        String[] strs = new String[str.length()];
        //计数该字符出现了多少次
        int count = 0;
        //先把字符串转换成数组
        for (int i = 0; i < strs.length; i++)
        {
            strs[i] = str.substring(i, i + 1);
        }
        //挨个字符进行查找，查找到之后count++
        for (int i = 0; i < strs.length; i++)
        {
            if (strs[i].equals(findStr))
            {
                count++;
            }
        }
        return count;
    }
    @Test
    public void test()
    {
        int i = find("{", "<value code=\"${cnInpatientMedicalRecord.mrQualityCode!'NA'}\" codeSystem=\"2.16.156.10011.2.3.2.29\" codeSystemName=\"病案质量等级表\" displayName=\"<@dict_tag value=\"${cnInpatientMedicalRecord.mrQualityCode!'NA'}\" datasetCloumn=\"MR_QUALITY_CODE\">${dict.desc}</@dict_tag>\" xsi:type=\"CD\"/>\n" +
                "                 ");
        System.out.println(i);
    }
}
