import com.guo.entity.Student;
import com.guo.service.StudentService;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-21-19:58
 */
public class Mytest {

    @Test
    public void test(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring.xml");
        SqlSession sqlSessionFactory = (SqlSession) applicationContext.getBean("sqlSessionFactory");
        StudentService mapper = sqlSessionFactory.getMapper(StudentService.class);
        List<Student> all = mapper.findAll();
        System.out.println(all);
        sqlSessionFactory.close();
    }
}
