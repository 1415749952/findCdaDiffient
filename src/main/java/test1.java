import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-06-28
 * @Time: 11:09
 */
public class test1
{
    public static void main(String[] args) throws IOException
    {
        //create table expectant_record_bak as select * from  expectant_record
        //truncate table expectant_record;
        List<String> list = FileUtils.readLines(new File("D:\\q.txt"));
        for (String s : list)
        {
            String[] split = s.split(",");
            String sql = "create table "+split[0]+"_bak as select * from  "+split[0]+";";
            String sql1 = "truncate table "+split[0]+";";
            System.out.println(sql);
            System.out.println(sql1);
        }






//
//        for (int i = 1; i <= 53; i++)
//        {
//            String[] split = list.get(i - 1).split(",");
//            /**
//             * ﻿病历概要
//             */
//            System.out.println("/*");
//            System.out.println(" * "+split[0]);
//            System.out.println(" */");
//            if (i < 10)
//            {
//                String sql = "C000"+ i + "(" + (62+i) +"," + "\"C000" + i + "\"," + "\""+split[0] + "\"," + "\""+split[1]+"\",\"" + split[2] + "\", \""+ split[3]+"\"),";
//                System.out.println(sql);
//            }
//            else
//            {
//                String sql = "C00"+ i + "(" + (62+i) +"," + "\"C00" + i + "\"," + "\""+split[0] + "\"," + "\""+split[1]+"\",\"" + split[2] + "\", \"" + split[3]+"\"),";
//                System.out.println(sql);
//            }
//        }
    }
}
