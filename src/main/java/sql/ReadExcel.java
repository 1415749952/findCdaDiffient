package sql;


import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2021-01-04
 * @Time: 23:23
 */
public class ReadExcel
{
    public static List<Map<String, String>> readExcel(File file, String sheetName) throws IOException
    {
        //定义工作簿
        XSSFWorkbook xssfWorkbook = null;
        try
        {
            xssfWorkbook = new XSSFWorkbook(file);
        }
        catch (Exception e)
        {
            System.out.println("Excel data file cannot be found!");
        }

        //定义工作表
        XSSFSheet xssfSheet;
        if (sheetName.equals(""))
        {
            // 默认取第一个子表
            xssfSheet = xssfWorkbook.getSheetAt(0);
        }
        else
        {
            xssfSheet = xssfWorkbook.getSheet(sheetName);
        }
        List<Map<String, String>> list = new ArrayList<Map<String, String>>();
        //定义行
        //默认第一行为标题行，index = 0
        XSSFRow titleRow = xssfSheet.getRow(0);

        //循环取每行的数据
        for (int rowIndex = 1; rowIndex < xssfSheet.getPhysicalNumberOfRows(); rowIndex++)
        {
            XSSFRow xssfRow = xssfSheet.getRow(rowIndex);
            if (xssfRow == null)
            {
                continue;
            }

            Map<String, String> map = new LinkedHashMap<String, String>();
            //循环取每个单元格(cell)的数据
            for (int cellIndex = 0; cellIndex < xssfRow.getPhysicalNumberOfCells(); cellIndex++)
            {
                XSSFCell titleCell = titleRow.getCell(cellIndex);
                XSSFCell xssfCell = xssfRow.getCell(cellIndex);
                map.put(getString(titleCell), getString(xssfCell));
            }
            list.add(map);
        }
        xssfWorkbook.close();
        return list;
    }

    /**
     * 把单元格的内容转为字符串
     *
     * @param xssfCell 单元格
     * @return 字符串
     */
    public static String getString(XSSFCell xssfCell)
    {
        if (xssfCell == null)
        {
            return "";
        }
        xssfCell.setCellType(CellType.STRING);
        return xssfCell.getStringCellValue();
    }


}
