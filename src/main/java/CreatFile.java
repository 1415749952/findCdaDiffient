import java.io.File;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-06-22
 * @Time: 18:40
 */
public class CreatFile
{
    public static void main(String[] args) throws IOException
    {
        File directory = new File("");//参数为空
        String courseFile = directory.getCanonicalPath()+"\\src\\main\\resources\\cadTemp";//标准的路径 ;
        String cadFile = directory.getCanonicalPath()+"\\src\\main\\resources\\cda\\";//标准的路径 ;
        // String author =directory.getAbsolutePath();//绝对路径;
        File cadTempFile = new File(courseFile);
        //所有的cda文档名称
        String [] cdaFileNames = cadTempFile.list();
        for (String cdaFileName : cdaFileNames)
        {
            String[] split = cdaFileName.split(".x");
            File file = new File(cadFile + split[0]+".txt");
            file.createNewFile();
        }
    }
}
