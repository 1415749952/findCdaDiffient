import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-08-14
 * @Time: 4:56 下午
 */
public class test2
{
    /**
     *
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) throws IOException
    {
        /*String a = "{caesareanSectionRecord.operateMzfsId!'NA'}";
        String[] split = a.split("\\.");
        for (String s : split)
        {
            System.out.println(s);
        }*/
        File directory = new File("");//参数为空
        //不同操作系统显示不同的。windows上面代表/。macos和Linux代表\
        String separator = File.separator;
        //cda.xml模版所在的文件夹
        String courseFile = directory.getCanonicalPath() + separator + "src" + separator + "main" + separator + "resources" + separator + "cda";
        File file = new File(courseFile);
        //所有的cda文档名称
        String[] cdaFileNames = file.list();
        List<String> strings = Arrays.asList(cdaFileNames);
        Collections.sort(strings);
        for (String cdaFileName : strings)
        {
            String[] split = cdaFileName.split("\\.");
            System.out.println("/**");
            int i = Integer.valueOf(split[0]) + 62;
            System.out.println("* "+ i + "  " +split[1]+"模版ID");
            System.out.println("*/");

            System.out.println("public static final int  = " + i+";");
        }

    }
}
