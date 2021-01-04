package sql;


import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2021-01-04
 * @Time: 22:37
 */
public class CreateSQL
{
    public static void main(String[] args) throws IOException
    {
        File directory = new File("");//参数为空
        //不同操作系统显示不同的。windows上面代表/。macos和Linux代表\
        String separator = File.separator;
        String courseFile = directory.getCanonicalPath() + separator + "src" + separator + "main" + separator + "resources" + separator + "物理库表结构";//标准的路径 ;
        File file = new File(courseFile + File.separator + "sql");
        if (file.exists() && file.list().length > 0)
        {
            file.delete();
        }
        File cadTempFile = new File(courseFile + File.separator + "xlsx");
        //所有的cda文档名称
        String[] cdaFileNames = cadTempFile.list();
        for (String cdaFileName : cdaFileNames)
        {
            String name = getName(cdaFileName);
            if (null != name)
            {
                genterSql(courseFile, cdaFileName, name);
            }

        }
    }

    public static String getName(String filename)
    {
        String replace = filename.replace("（", "(");
        replace = replace.replace("）", ")");
        if (replace.contains("(重)"))
        {
            replace = replace.replace("(重)", "");
        }
        if (replace.contains("(急)"))
        {
            replace = replace.replace("(急)", "");
        }

        String s = subString(replace, "(", ")");
        return s;
    }

    public static String subString(String str, String strStart, String strEnd)
    {

        /* 找出指定的2个字符在 该字符串里面的 位置 */
        int strStartIndex = str.indexOf(strStart);
        int strEndIndex = str.indexOf(strEnd);

        /* index 为负数 即表示该字符串中 没有该字符 */
        if (strStartIndex < 0)
        {
            return null;
        }
        if (strEndIndex < 0)
        {
            return null;
        }
        /* 开始截取 */
        String result = str.substring(strStartIndex, strEndIndex).substring(strStart.length());
        return result;
    }

    public static void genterSql(String courseFile, String fileName, String tableName) throws IOException
    {
        String replace = fileName.replace("xlsx", "sql");
        File file = new File(courseFile + File.separator + "sql" + File.separator + replace);
        File cda = new File(courseFile + File.separator + "xlsx"+ File.separator + fileName);
        List<Map<String, String>> maps = ReadExcel.readExcel(cda, "");
        for (Map<String, String> map : maps)
        {
            String zhushi = "---" + map.get("名称") + "  " + map.get("类型") + "  " + map.get("可为空") + "  " + map.get("默认") + "  " + map.get("注释") + "  " + map.get("数据元允许值") + "  " + map.get("数据元值的\n" +
                    "数据类型") + "  " + map.get("表示格式");
            FileUtils.writeStringToFile(file, zhushi, "UTF-8", true);
            FileUtils.writeStringToFile(file, "\n", "UTF-8", true);
            String sql = "SELECT " + map.get("名称") + " FROM " + tableName + " GROUP BY " + map.get("名称") + ";";
            FileUtils.writeStringToFile(file, sql, "UTF-8", true);
            FileUtils.writeStringToFile(file, "\n", "UTF-8", true);
            FileUtils.writeStringToFile(file, "\n", "UTF-8", true);
        }
        System.out.println("成功生成---"+file.getName());
    }

}