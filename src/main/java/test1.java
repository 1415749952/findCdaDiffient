import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

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
        public static void main(String[] args) {
        int count = 0;
        int index = 0;
        Scanner scanner=new Scanner(System.in);
        System.out.println("请输入一个字符串：");
        String string=scanner.nextLine();
        System.out.println("请输入要查找的字符：");
        String string2=scanner.nextLine();

        System.out.println("字符："+string2+" 在字符："+string+" 中共出现了："+count+"次！");
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
