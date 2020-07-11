package cda;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
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
        String  separator= File.separator;
        String courseFile = directory.getCanonicalPath() +separator+"src"+separator+"main"+separator+"resources"+separator+"cdaTemp";//标准的路径 ;
        File cadTempFile = new File(courseFile);
        //所有的cda文档名称
        String[] cdaFileNames = cadTempFile.list();

        for (String cdaFileName : cdaFileNames)
        {
            File cad = new File(courseFile + separator + cdaFileName);
            redCDAFile(cad);
        }
        //redCDAFile(new File(courseFile+"\\"+"01.病历概要.xml"));
    }


    public static void redCDAFile(File cdaFile) throws IOException
    {
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
        }
    }
}
