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
    public static void main(String[] args)
    {
        String a = "{caesareanSectionRecord.operateMzfsId!'NA'}";
        String[] split = a.split("\\.");
        for (String s : split)
        {
            System.out.println(s);
        }

    }
}
