package rename;

import org.apache.commons.io.FileUtils;

import java.io.File;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-07-28
 * @Time: 16:28
 */
public class rename
{
    public static void main(String[] args)
    {
        String fileSoure = "C:\\Users\\TheFei\\Desktop\\对比\\93张玉梅-561408(住院号)-20200728";
        File file = new File(fileSoure);
        String[] list = file.list();
        for (String s : list)
        {
            String news = "";
            File old = new File(fileSoure +"\\"+ s);
            if (s.contains("M"))
            {
                news = s.replaceFirst("M", "H");
            }
            if (s.contains("H"))
            {
                news = s.replaceFirst("H", "M");
            }
            old.renameTo(new File(fileSoure +"\\"+ news));
            //file.renameTo()
        }
        //FileUtils.moveFile();
    }
}
