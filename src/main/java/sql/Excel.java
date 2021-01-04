package sql;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2021-01-04
 * @Time: 23:19
 */
public class Excel
{
    /**
     *名称
     */
    private String name;
    /**
     *类型
     */
    private String type;
    /**
     *可为空
     */
    private String isNull;
    /**
     *默认
     */
    private String defaultRes;
    /**
     *注释
     */
    private String note;
    /**
     *数据元允许值
     */
    private String allowd;

    public Excel()
    {
    }

    public Excel(String name, String type, String isNull, String defaultRes, String note, String allowd)
    {
        this.name = name;
        this.type = type;
        this.isNull = isNull;
        this.defaultRes = defaultRes;
        this.note = note;
        this.allowd = allowd;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getType()
    {
        return type;
    }

    public void setType(String type)
    {
        this.type = type;
    }

    public String getIsNull()
    {
        return isNull;
    }

    public void setIsNull(String isNull)
    {
        this.isNull = isNull;
    }

    public String getDefaultRes()
    {
        return defaultRes;
    }

    public void setDefaultRes(String defaultRes)
    {
        this.defaultRes = defaultRes;
    }

    public String getNote()
    {
        return note;
    }

    public void setNote(String note)
    {
        this.note = note;
    }

    public String getAllowd()
    {
        return allowd;
    }

    public void setAllowd(String allowd)
    {
        this.allowd = allowd;
    }
}
