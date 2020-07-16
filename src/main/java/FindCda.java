import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.net.URL;
import java.util.Arrays;
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
 * @Time: 9:42
 */
public class FindCda
{
    public static void main(String[] args) throws IOException
    {
        File directory = new File("");//参数为空
        String  separator= File.separator;
        String courseFile = directory.getCanonicalPath() +separator+"src"+separator+"main"+separator+"resources"+separator+"cdaTemp";//标准的路径 ;
        String shujuyuanFile = directory.getCanonicalPath() + separator+"src"+separator+"main"+separator+"resources"+separator+"cda";//标准的路径 ;
        // String author =directory.getAbsolutePath();//绝对路径;
        File cadTempFile = new File(courseFile);
        //所有的cda文档名称
        String[] cdaFileNames = cadTempFile.list();
        File shujuji = new File(shujuyuanFile);
        String[] shujujiList = shujuji.list();

        for (int i = 1; i <= shujujiList.length; i++)
        {

            String reallFileAddress = cadTempFile + separator + cdaFileNames[i - 1];
            //findDiffceMetadata(reallFileAddress);
            HashSet<String> metadataSet = getMetadata(reallFileAddress);


            String cdashujuyunaAddress = shujuji + separator + (shujujiList[i - 1]);
            HashSet<String> strings = readFile(cdashujuyunaAddress);
            HashSet<String> compare = compare(metadataSet, strings);
            System.out.println(reallFileAddress);
            for (String o : compare)
            {
                System.out.println(o+"      "+Tool.humpToLine2(o).toUpperCase());
            }
            System.out.println("*********************************");
        }

/*
        for (String cdaFileName : cdaFileNames)
        {
            String reallFileAddress = cadTempFile + "\\" + cdaFileName;
            String cdashujuyunaAddress = cadTempFile + "\\" + cdaFileName;

            findDiffceMetadata(reallFileAddress);
            getCdaMetadataSize(reallFileAddress);
        }*/
    }


    private static HashSet<String> compare(HashSet<String> wendangXML,HashSet<String> shujujiTXT)
    {
        HashSet<String> shujujiTXTCopy = new HashSet<>();
        for (String s : shujujiTXT)
        {
            shujujiTXTCopy.add(s);
        }
        HashSet<String> chage = new HashSet<>();
        for (String re : wendangXML)
        {
            int s = re.indexOf(".");
            int l = re.indexOf("!");
            chage.add(re.substring(s + 1, l));
        }
        HashSet<String> result = new HashSet<>();
        result.clear();
        result.addAll(shujujiTXT);
        result.retainAll(chage);

        shujujiTXTCopy.removeAll(result);
        return shujujiTXTCopy;
    }


    /**
     * 读取txt文档的内容
     *
     * @param reallFileAddress
     * @return
     */
    private static HashSet<String> readFile(String reallFileAddress) throws IOException
    {
        List<String> list = FileUtils.readLines(new File(reallFileAddress));
        HashSet<String> strings = new HashSet<>();
        for (String s : list)
        {
            String[] split = s.split(",");
            String s1 = split[1].toLowerCase();
            strings.add(Tool.lineToHump(s1));
        }
        return strings;
    }


    /**
     * 查询一个cda模板是否存在配置两个数据源
     *
     * @param reallFileAddress
     * @return
     * @throws IOException
     */
    private static void findDiffceMetadata(String reallFileAddress) throws IOException
    {
        /*File cdaFile = new File(reallFileAddress);
        String cdaContent = FileUtils.readFileToString(cdaFile);*/
        HashSet<String> res = getMetadata(reallFileAddress);

        HashSet<String> cdaRes = new HashSet<>();
        for (String re : res)
        {
            int s = re.indexOf("{");
            int l = re.indexOf(".");
            cdaRes.add(re.substring(s + 1, l));
        }
        if (cdaRes.size() > 1)
        {
            System.out.println(reallFileAddress + "有两个数据源");
        }
        else
        {
            System.out.println(reallFileAddress + "有一个数据源");
        }
    }

    /**
     * 当前cda文档元数据的个数
     *
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
     *
     * @param reallFileAddress
     * @return
     */
    private static HashSet<String> getMetadata(String reallFileAddress) throws IOException
    {
        File cdaFile = new File(reallFileAddress);
        String cdaContent = FileUtils.readFileToString(cdaFile);
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

            /*if (group.indexOf("dict") == -1 && group.indexOf("docInfo") == -1 && group.indexOf("hospitalInfo") == -1 && group.indexOf("privacy") == -1)
            {
                res.add(group);
            }*/
        }
        return res;
    }


}
