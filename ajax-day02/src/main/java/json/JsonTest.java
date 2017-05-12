package json;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import bean.Stocjk;

public class JsonTest {
    /*
     * 将java对象转换成json字符串
     */
	public static void test1() throws JsonProcessingException{
		Stocjk s=new Stocjk();
		s.setCode("8055");
		s.setName("杀毒");
		s.setPrice(8);
		//使用jackson提供的工具来转换
		ObjectMapper om=new ObjectMapper();
		String jsonStr=om.writeValueAsString(s);
			System.out.println(jsonStr);
 	}
	public static void test2() throws JsonProcessingException{
		List<Stocjk> list=new ArrayList<Stocjk>();
		for(int i=0;i<3;i++){
			Stocjk s=new Stocjk();
			s.setCode("8055"+i);
			s.setName("杀毒"+i);
			s.setPrice(8+i);
			list.add(s);
		}
		ObjectMapper om=new ObjectMapper();
		String jsonStr=om.writeValueAsString(list);
		System.out.println(jsonStr);
	}
	public static void main(String[] args) throws JsonProcessingException {
		test1();
		test2();
	}
}
