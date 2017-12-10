package com.buliyiren.wehelp.test.unit;

import com.buliyiren.wehelp.model.User;
import com.buliyiren.wehelp.service.UserService;
import io.swagger.util.Json;
import jdk.nashorn.internal.parser.JSONParser;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by chenkaihua on 15-9-15.
 */
public class UserServiceTest extends  BaseUnitTest{



    @Autowired
    UserService userService;


    @Test
    public void test(){
        User user = new User();
        user.setUserName("陈开华");
        user.setPassword("密码");
        userService.addUser(user);
        System.out.println(user);
    }

    @Test
    public void testFind() {
        List<User> users = userService.getUsers(null);
    }

}
