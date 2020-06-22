import org.apache.commons.io.FileUtils;

import javax.swing.*;
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
 * @Date: 2020-06-22
 * @Time: 10:17
 */
public class test
{
    public static void main(String[] args) throws IOException
    {
        //C0003(65, "C0003", "", "","",""),
        List<String> list = FileUtils.readLines(new File("D:\\a.txt"));
        for (int i = 1; i <= 53; i++)
        {
            String[] split = list.get(i - 1).split(",");
            /**
             * ﻿病历概要
             */
            System.out.println("/*");
            System.out.println(" * "+split[0]);
            System.out.println(" */");
            if (i < 10)
            {
                String sql = "C000"+ i + "(" + (62+i) +"," + "\"C000" + i + "\"," + "\""+split[0] + "\"," + "\""+split[1]+"\",\"" + split[2] + "\", \""+ split[3]+"\"),";
                System.out.println(sql);
            }
            else
            {
                String sql = "C00"+ i + "(" + (62+i) +"," + "\"C00" + i + "\"," + "\""+split[0] + "\"," + "\""+split[1]+"\",\"" + split[2] + "\", \"" + split[3]+"\"),";
                System.out.println(sql);
            }
        }
    }
}
