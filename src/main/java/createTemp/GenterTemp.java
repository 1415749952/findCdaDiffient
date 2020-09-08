package createTemp;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * Description:根据xml文件生辰模版
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-09-08
 * @Time: 11:03 上午
 */
public class GenterTemp
{

    public static void main(String[] args) throws IOException
    {
        File directory = new File("");//参数为空
        //不同操作系统显示不同的。windows上面代表/。macos和Linux代表\
        String separator = File.separator;
        //cda.xml模版所在的文件夹
        String courseFile = directory.getCanonicalPath() + separator + "src" + separator + "main" + separator + "resources" + separator + "cdaTemp";
        //cda.ftl模版所在的文件夹
        String courseFileFtl = directory.getCanonicalPath() + separator + "src" + separator + "main" + separator + "resources" + separator + "ftl";
        File cadTempFile = new File(courseFile);
        //所有的cda文档名称
        String[] cdaFileNames = cadTempFile.list();
        for (String cdaFileName : cdaFileNames)
        {
            File cda = new File(courseFile + separator + cdaFileName);
            String[] split = cdaFileName.split("\\.");
            File fileFtl = new File(courseFileFtl+ separator +"C00" + split[0] + ".ftl");
            FileUtils.copyFile(cda,fileFtl);
        }
    }
}
