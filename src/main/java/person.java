import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-10-29
 * @Time: 10:43 上午
 */
public class person
{
    String name;
    int age;
    short sex;
    Date birth;
    String jianjie;
    address address;

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public int getAge()
    {
        return age;
    }

    public void setAge(int age)
    {
        this.age = age;
    }

    public short getSex()
    {
        return sex;
    }

    public void setSex(short sex)
    {
        this.sex = sex;
    }

    public Date getBirth()
    {
        return birth;
    }

    public void setBirth(Date birth)
    {
        this.birth = birth;
    }

    public String getJianjie()
    {
        return jianjie;
    }

    public void setJianjie(String jianjie)
    {
        this.jianjie = jianjie;
    }

    public address getAddress()
    {
        return address;
    }

    public void setAddress(address address)
    {
        this.address = address;
    }

    @Override
    public String toString()
    {
        return "person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", birth=" + birth +
                ", jianjie='" + jianjie + '\'' +
                ", address=" + address +
                '}';
    }
}
