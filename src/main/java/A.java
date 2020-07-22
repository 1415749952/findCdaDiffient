import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-07-22
 * @Time: 10:26
 */
public class A
{
    public static void main(String[] args) throws IOException
    {
        String a = "今天的头条新闻你看了没有，良心老总马富贵悬赏十个亿求购一件C级紫色装备。\r\n";
        File file = new File("d:\\a.txt");
        file.createNewFile();
        FileUtils.writeStringToFile(file,a,"UTF-8",true);
        FileUtils.writeStringToFile(file,a,"UTF-8",true);
        FileUtils.writeStringToFile(file,a,"UTF-8",true);
        FileUtils.writeStringToFile(file,a,"UTF-8",true);
    }
}
