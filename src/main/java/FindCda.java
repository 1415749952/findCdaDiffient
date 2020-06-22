import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.net.URL;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-06-22
 * @Time: 9:42
 */
public class FindCda
{
    public static void main(String[] args) throws IOException
    {
        File directory = new File("");//参数为空
        String courseFile = directory.getCanonicalPath()+"\\src\\main\\resources\\cadTemp";//标准的路径 ;
        // String author =directory.getAbsolutePath();//绝对路径;
        File cadTempFile = new File(courseFile);
        String [] cdaFileNames = cadTempFile.list();
        for (String cdaFileName : cdaFileNames)
        {
            String reallFileAddress = cadTempFile + "\\" + cdaFileName;
            isOK(reallFileAddress);
            getCdaMetadataSize(reallFileAddress);
        }
    }

    private static boolean isOK(String reallFileAddress) throws IOException
    {
        File cdaFile = new File(reallFileAddress);
        String cdaContent = FileUtils.readFileToString(cdaFile);
        HashSet<String> res = getMetadata(cdaContent);

        HashSet<String> cdaRes = new HashSet<>();
        for (String re : res)
        {
            int s = re.indexOf("{");
            int l = re.indexOf(".");
            cdaRes.add(re.substring(s+1, l));
        }
        if (cdaRes.size()>1)
        {
            System.out.println(reallFileAddress+"有两个数据源");
            return false;
        }
        else
        {
            System.out.println(reallFileAddress+"有一个数据源");
            return true;
        }
    }

    /**
     * 当前cda文档元数据的个数
     * @param reallFileAddress
     * @return
     */
    private static int getCdaMetadataSize(String reallFileAddress) throws IOException
    {
        File cdaFile = new File(reallFileAddress);
        String cdaContent = FileUtils.readFileToString(cdaFile);
        HashSet<String> metadata = getMetadata(cdaContent);
        System.out.println(metadata.size());
        System.out.println("*************************************************");
        for (String metadatum : metadata)
        {
            System.out.println(metadatum);
        }
        return metadata.size();
    }


    /**
     * 根据模板内容获取 当前子集的元数据（排除下列子集）
     * emrBasicpatient
     * emrBasichealth
     * emrHealthevents
     * emrMedicalbill
     * dict
     * docInfo
     * hospitalInfo
     * @param cdaContent
     * @return
     */
    private static HashSet<String> getMetadata(String cdaContent)
    {
        Pattern p = Pattern.compile("\\{(.*?)\\}");//正则表达式，取{和=}之间的字符串
        Matcher m = p.matcher(cdaContent);
        HashSet<String> res = new HashSet<>();
        while (m.find())
        {
            /**
             * emrBasicpatient
             * emrBasichealth
             * emrHealthevents
             * emrMedicalbill
             * dict
             * docInfo
             * hospitalInfo
             * 这几个都要排除
             */
            String group = m.group(0);
            //System.out.println(group);
            if (group.indexOf("dict") == -1 && group.indexOf("docInfo") == -1 && group.indexOf("hospitalInfo") == -1
                    && group.indexOf("emrBasicpatient") == -1 && group.indexOf("emrBasichealth") == -1
                    && group.indexOf("emrHealthevents") == -1 && group.indexOf("emrMedicalbill") == -1 && group.indexOf("privacy") == -1)
            {
                res.add(group);
            }
        }
        return res;
    }




}
